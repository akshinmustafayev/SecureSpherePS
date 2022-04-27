function Edit-SecureSphereWebServiceCustomPolicy {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [string] $PolicyName, 
        
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()] 
        [bool] $Enabled, 
        
        [Parameter(Mandatory = $false)] 
        [ValidateSet(
            "high", 
            "medium", 
            "low", 
            "informative", 
            "noAlert"
        )]
        [ValidateNotNullOrEmpty()] 
        [string] $Severity,
        
        [Parameter(Mandatory = $false)] 
        [ValidateSet(
            "block", 
            "none"
        )]
        [ValidateNotNullOrEmpty()] 
        [string] $Action,
        
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()] 
        [string] $FollowedAction, 
        
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [bool] $OneAlertPerSession, 
         
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()] 
        [bool] $DisplayResponsePage,
         
        [Parameter(Mandatory = $false)]
        $ApplyTo, 
         
        [Parameter(Mandatory = $false)]
        $MatchCriteria ,

        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [bool] $SendToCD
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/policies/security/webServiceCustomPolicies/$PolicyName"
        
        $ApiBody = [ordered]@{ }

        $ApplyToJson = $ApplyTo | ConvertTo-Json
        $MatchCriteriaJson = $MatchCriteria | ConvertTo-Json

        if ($PSBoundParameters.ContainsKey('Enabled')) {
            $ApiBody += @{ "enabled" = $Enabled; }
        }
        if ($PSBoundParameters.ContainsKey('Severity')) {
            $ApiBody += @{ "severity" = $Severity; }
        }
        if ($PSBoundParameters.ContainsKey('Action')) {
            $ApiBody += @{ "action" = $Action; }
        }
        if ($PSBoundParameters.ContainsKey('FollowedAction')) {
            $ApiBody += @{ "followedAction" = $FollowedAction; }
        }
        if ($PSBoundParameters.ContainsKey('OneAlertPerSession')) {
            $ApiBody += @{ "oneAlertPerSession" = $OneAlertPerSession; }
        }
        if ($PSBoundParameters.ContainsKey('DisplayResponsePage')) {
            $ApiBody += @{ "displayResponsePage" = $DisplayResponsePage; }
        }
        if ($PSBoundParameters.ContainsKey('ApplyTo')) {
            $ApiBody += @{ "applyTo" = $ApplyToJson; }
        }
        if ($PSBoundParameters.ContainsKey('MatchCriteria')) {
            $ApiBody += @{ "matchCriteria" = $MatchCriteriaJson; }
        }
        if ($PSBoundParameters.ContainsKey('SendToCD')) {
            $ApiBody += @{ "sendToCD" = $SendToCD; }
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
