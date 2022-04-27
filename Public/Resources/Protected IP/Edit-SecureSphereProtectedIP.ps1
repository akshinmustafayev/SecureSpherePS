function Edit-SecureSphereProtectedIP {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $SiteName,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $ServerGroupName,
        
        [Parameter(Mandatory = $true)] 
        [ValidateIPAddress()]
        [ValidateNotNullOrEmpty()] 
        [string] $IPAddress,
        
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()]
        [string] $GatewayGroupName,
        
        [Parameter(Mandatory = $false)]
        [ValidateIPAddress()]
        [ValidateNotNullOrEmpty()]
        [string] $NewIPAddress,
        
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()] 
        [string] $NewGatewayGroupName,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $NewComment
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        if (($PSBoundParameters.ContainsKey('NewIPAddress') -eq $false) -and
            ($PSBoundParameters.ContainsKey('NewGatewayGroupName') -eq $false) -and
            ($PSBoundParameters.ContainsKey('NewComment') -eq $false)) {
            Write-Error "At least one parameter to edit must be specified."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/serverGroups/$SiteName/$ServerGroupName/protectedIPs/$IPAddress?gatewayGroup=$GatewayGroupName"

        $ApiBody = [ordered]@{}

        if ($PSBoundParameters.ContainsKey('NewIPAddress')) {
            $ApiBody += @{ "ip" = $NewIPAddress }
        }
        if ($PSBoundParameters.ContainsKey('NewGatewayGroupName')) {
            $ApiBody += @{ "gateway-group" = $NewGatewayGroupName }
        }
        if ($PSBoundParameters.ContainsKey('NewComment')) {
            $ApiBody += @{ "comment" = $NewComment }
        }

        $ApiBody = $ApiBody | ConvertTo-Json
    }
    Process {
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] ParameterSetName: $($PsCmdlet.ParameterSetName)"
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] PSBoundParameters: $($PSBoundParameters | Out-String)"

        try {
            $Result = Invoke-RestMethod -Method Put -Uri $ApiUrl -Body $ApiBody -ContentType "application/json" -WebSession $SecureSphereSession
        }
        catch {
            Write-Error "$_"
        }
        
        return $Result
    }
    End {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Complete"
    }
}
