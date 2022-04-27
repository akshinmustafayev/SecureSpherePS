function New-SecureSphereGatewayGroup {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $GatewayGroupName,
          
        [Parameter(Mandatory = $true)] 
        [ValidateSet(
            "Imperva", 
            "Amazon",
            "Azure"
        )]
        [ValidateNotNullOrEmpty()]
        [string] $GatewayPlatform,
        
        [Parameter(Mandatory = $true)] 
        [ValidateSet(
            "impvhaBridge", 
            "reverseProxy"
        )]
        [ValidateNotNullOrEmpty()] 
        [string] $GatewayMode,
        
        [Parameter(Mandatory = $true)] 
        [ValidateSet(
            "failOpen", 
            "failClose"
        )]
        [ValidateNotNullOrEmpty()] 
        [string] $FailMode,
         
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [bool] $OverloadPolicy 
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        if (($GatewayPlatform -eq "Amazon") -or ($GatewayPlatform -eq "Azure")) {
            if ($GatewayMode -ne "reverseProxy") {
                Write-Error "For platforms 'amazon' and 'azure', only 'reverseProxy' gateway mode is applicable"
                break
            }
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/gatewayGroups/$GatewayGroupName"

        $ApiBody = [ordered]@{
            "gatewayPlatform" = $GatewayPlatform.ToLower();
            "gatewayMode"     = $GatewayMode;
            "failMode"        = $FailMode;
        }

        if ($PSBoundParameters.ContainsKey('OverloadPolicy')) {
            $ApiBody += @{ "overloadPolicy" = $OverloadPolicy }
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
