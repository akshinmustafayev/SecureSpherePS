function New-SecureSphereWebErrorPagePolicy {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Position = 0, Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $WebErrorPagePolicyName,

        [Parameter(Position = 1, Mandatory = $true, ParameterSetName = 'ByWebErrorPagePolicyRule')]
        $WebErrorPagePolicyRule,
        
        [Parameter(Position = 1, Mandatory = $true, ParameterSetName = 'ByWebErrorPagePolicyRules')]
        $WebErrorPagePolicyRules
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/globalObjects/webErrorPageGroups/policies/$WebErrorPagePolicyName"

        $WebErrorPagePolicyRulesJson = ""
        if ($PSCmdlet.ParameterSetName -eq 'ByWebErrorPagePolicyRule') {
            $WebErrorPagePolicyRulesJson = $WebErrorPagePolicyRule.GetJson()
            Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] WebErrorPagePolicyRulesJson was for ByWebErrorPagePolicyRule: $($WebErrorPagePolicyRulesJson)"
        }
        if ($PSCmdlet.ParameterSetName -eq 'ByWebErrorPagePolicyRules') {
            $WebErrorPagePolicyRulesJson = $WebErrorPagePolicyRules | ConvertTo-Json
            Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] WebErrorPagePolicyRulesJson was for ByWebErrorPagePolicyRules: $($WebErrorPagePolicyRulesJson)"
        }

        $ApiBody = [ordered]@{ "rules" = $WebErrorPagePolicyRulesJson }
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
