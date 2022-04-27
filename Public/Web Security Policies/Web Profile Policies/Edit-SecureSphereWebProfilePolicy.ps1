function Edit-SecureSphereWebProfilePolicy {
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
        $ApuConfig,
       
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()] 
        [bool] $DisableLearning, 
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [bool] $DisplayResponsePage,
         
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()]
        $ApplyTo
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/policies/security/webProfilePolicies/$PolicyName"
        
        $RulesJson = $Rules | ConvertTo-Json
        $ExceptionsJson = $Exceptions | ConvertTo-Json
        $ApuConfigJson = $ApuConfig | ConvertTo-Json
        $ApplyToJson = $ApplyTo | ConvertTo-Json

        $ApiBody = [ordered]@{ 
            "rules"               = $RulesJson;
            "exceptions"          = $ExceptionsJson;
            "apuConfig"           = $ApuConfigJson;
            "disableLearning"     = $DisableLearning;
            "displayResponsePage" = $DisplayResponsePage;
            "applyTo"             = $ApplyToJson;
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
