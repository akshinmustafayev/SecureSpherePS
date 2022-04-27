function New-SecureSphereURLRewriteGroup {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Position = 0, Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [string] $UrlRewriteGroupName,

        [Parameter(Position = 1, Mandatory = $true, ParameterSetName = 'ByURLRewriteRule')]
        $URLRewriteRule,
        
        [Parameter(Position = 1, Mandatory = $true, ParameterSetName = 'ByURLRewriteRules')]
        $URLRewriteRules
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/globalObjects/URLRewriteGroups/$UrlRewriteGroupName"

        $URLRewriteRulesJson = ""
        if ($PSCmdlet.ParameterSetName -eq 'ByURLRewriteRule') {
            $URLRewriteRulesJson = $URLRewriteRule.GetJson()
            Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] URLRewriteRulesJson was for ByIPEntry: $($URLRewriteRulesJson)"
        }
        if ($PSCmdlet.ParameterSetName -eq 'ByURLRewriteRules') {
            $URLRewriteRulesJson = $URLRewriteRules | ConvertTo-Json
            Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] URLRewriteRulesJson was for ByIPEntries: $($URLRewriteRulesJson)"
        }

        $ApiBody = [ordered]@{ "rules" = $URLRewriteRulesJson }
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
