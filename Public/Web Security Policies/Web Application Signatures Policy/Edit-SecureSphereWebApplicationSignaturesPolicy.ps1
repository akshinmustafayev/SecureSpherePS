function Edit-SecureSphereWebApplicationSignaturesPolicy {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [string] $PolicyName,
        
        [Parameter(Mandatory = $true)] 
        $Rules,
         
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [bool] $DisplayResponsePage,
        
        [Parameter(Mandatory = $true)] 
        $ApplyTo,
        
        [Parameter(Mandatory = $true)] 
        $Exceptions
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/policies/security/webApplicationSignaturesPolicies/$PolicyName"
                
        $RulesJson = $Rules | ConvertTo-Json
        $ApplyToJson = $ApplyTo | ConvertTo-Json
        $ExceptionsJson = $Exceptions | ConvertTo-Json

        $ApiBody = [ordered]@{
            "rules"               = $RulesJson;
            "displayResponsePage" = $DisplayResponsePage;
            "applyTo"             = $ApplyToJson;
            "exceptions"          = $ExceptionsJson
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
