function New-SecureSphereWebCorrelationPolicy {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()] 
        [string] $PolicyName,
         
        [Parameter(Mandatory = $true)] 
        $Rules, 
        
        [Parameter(Mandatory = $true)] 
        $Exceptions,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()] 
        [bool] $DisplayResponsePageInAlerts,
         
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [bool]  $IncludeProfileInformation,
        
        [Parameter(Mandatory = $true)] 
        $ApplyTo 
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/policies/security/webCorrelationPolicies/$PolicyName"
        
        $RulesJson = $Rules | ConvertTo-Json
        $ExceptionsJson = $Exceptions | ConvertTo-Json
        $ApplyToJson = $ApplyTo | ConvertTo-Json

        $ApiBody = [ordered]@{ 
            "rules"                       = $RulesJson;
            "exceptions"                  = $ExceptionsJson;
            "displayResponsePageInAlerts" = $DisplayResponsePageInAlerts;
            "includeProfileInformation"   = $IncludeProfileInformation;
            "applyTo"                     = $ApplyToJson;
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
