function Remove-SecureSphereProtectedIP {
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
        [ValidateNotNullOrEmpty()] 
        [ValidateIPAddress()]
        [string] $IPAddress,
         
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [string] $GatewayGroupName
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }
        
        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/serverGroups/$SiteName/$ServerGroupName/protectedIPs/$IPAddress?gatewayGroup=$GatewayGroupName"
    }
    Process {
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] ParameterSetName: $($PsCmdlet.ParameterSetName)"
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] PSBoundParameters: $($PSBoundParameters | Out-String)"

        try {
            $Result = Invoke-RestMethod -Method Delete -Uri $ApiUrl -ContentType "application/json" -WebSession $SecureSphereSession
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
