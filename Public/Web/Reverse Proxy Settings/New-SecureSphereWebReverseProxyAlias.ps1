function New-SecureSphereWebReverseProxyAlias {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()] 
        [string] $GatewayName, 
         
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()] 
        [string] $AliasName,
         
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [bool] $Enabled,
         
        [Parameter(Mandatory = $true)] 
        [ValidateIPAddress()]
        [ValidateNotNullOrEmpty()] 
        [string] $ExternalAddress, 
        
        [Parameter(Mandatory = $true)]
        [ValidateIPAddress()]
        [ValidateNotNullOrEmpty()]
        [string] $InternalAddress,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()] 
        [string] $Comment
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/gateways/$GatewayName/reverseProxy/aliases/$AliasName"

        $ApiBody = [ordered]@{ 
            "externalAddress" = $ExternalAddress;
            "internalAddress" = $InternalAddress;
        }

        if ($PSBoundParameters.ContainsKey('Enabled')) {
            $ApiBody += @{ "enabled" = $Enabled }
        }
        if ($PSBoundParameters.ContainsKey('Comment')) {
            $ApiBody += @{ "comment" = $Comment }
        }

        $ApiBody = $ApiBody | ConvertTo-Json
    }
    Process {
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] ParameterSetName: $($PsCmdlet.ParameterSetName)"
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] PSBoundParameters: $($PSBoundParameters | Out-String)"

        try {
            $Result = Invoke-RestMethod -Method Post -Uri $ApiUrl -Body $ApiBody -ContentType "application/json" -WebSession $SecureSphereSession
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
