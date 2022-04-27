function Edit-SecureSphereSnippetInjectionPolicy {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [string] $PolicyName,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [bool] $Enabled,
        
        [Parameter(Mandatory = $true)]
        [ValidateSet(
            "OncePerSession",
            "Always", 
            "EveryXSec"
        )]
        [ValidateNotNullOrEmpty()]
        [string] $InvocationFrequency,
          
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()] 
        [UInt32] $InvocationFrequencyInSec,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [bool] $AllowInvocationInAllPages, 
          
        [Parameter(Mandatory = $false)]
        [string[]] $AdditionalInvocationUrls, 
         
        [Parameter(Mandatory = $true)]
        [ValidateSet(
            "AfterHead",
            "AfterBody",
            "AfterCustom"
        )]
        [ValidateNotNullOrEmpty()]
        [string] $SnippetLocation,
          
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $SnippetCustomLocation,
          
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()] 
        [string] $SnippetContent,
        
        [Parameter(Mandatory = $false)]
        $ApplyTo, 
        
        [Parameter(Mandatory = $false)] 
        $MatchCriteria 
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        if (($SnippetLocation -eq "AfterCustom") -and ($PSBoundParameters.ContainsKey('SnippetCustomLocation') -eq $false)) {
            Write-Error "SnippetCustomLocation value must present when SnippetLocation is AfterCustom."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/policies/security/snippetInjectionPolicies/$PolicyName"
        
        $ApplyToJson = $ApplyTo | ConvertTo-Json
        $MatchCriteriaJson = $MatchCriteria | ConvertTo-Json

        $ApiBody = [ordered]@{ }

        $ApiBody += @{ "enabled" = $Enabled; }
        $ApiBody += @{ "invocationFrequency" = $InvocationFrequency; }

        if ($PSBoundParameters.ContainsKey('InvocationFrequencyInSec')) {
            $ApiBody += @{ "invocationFrequencyInSec" = $InvocationFrequencyInSec }
        }
        if ($PSBoundParameters.ContainsKey('AllowInvocationInAllPages')) {
            $ApiBody += @{ "allowInvocationInAllPages" = $AllowInvocationInAllPages; }
        }
        if ($PSBoundParameters.ContainsKey('AdditionalInvocationUrls')) {
            $ApiBody += @{ "additionalInvocationUrls" = $AdditionalInvocationUrls; }
        }

        $ApiBody += @{ "snippetLocation" = $SnippetLocation; }

        if ($PSBoundParameters.ContainsKey('SnippetCustomLocation')) {
            $ApiBody += @{ "snippetCustomLocation" = $SnippetCustomLocation }
        }
        if ($PSBoundParameters.ContainsKey('SnippetContent')) {
            $ApiBody += @{  "snippetContent" = $SnippetContent; }
        }
        if ($PSBoundParameters.ContainsKey('ApplyTo')) {
            $ApiBody += @{  "applyTo" = $ApplyToJson; }
        }
        if ($PSBoundParameters.ContainsKey('MatchCriteria')) {
            $ApiBody += @{  "matchCriteria" = $MatchCriteriaJson; }
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
