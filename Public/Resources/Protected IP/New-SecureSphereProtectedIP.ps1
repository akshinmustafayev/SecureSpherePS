function New-SecureSphereProtectedIP {
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
        [ValidateNotNullOrEmpty()] 
        [string] $Comment
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }
        
        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/serverGroups/$SiteName/$ServerGroupName/protectedIPs/$IPAddress?gatewayGroup=$GatewayGroupName"

        $ApiBody = [ordered]@{}

        if ($PSBoundParameters.ContainsKey('Comment')) {
            $ApiBody += @{ "comment" = $Comment }
        }

        $ApiBody = $ApiBody | ConvertTo-Json
    }
    Process {
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] ParameterSetName: $($PsCmdlet.ParameterSetName)"
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] PSBoundParameters: $($PSBoundParameters | Out-String)"

        try {
            $Result = $null
            
            if ($ApiBody.Count -eq 0) {
                $Result = Invoke-RestMethod -Method Post -Uri $ApiUrl -ContentType "application/json" -WebSession $SecureSphereSession
            }
            else {
                $Result = Invoke-RestMethod -Method Post -Uri $ApiUrl -Body $ApiBody -ContentType "application/json" -WebSession $SecureSphereSession
            }
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
