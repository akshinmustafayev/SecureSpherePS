function Edit-SecureSphereFirewallPolicy {
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
            "High",
            "Medium", 
            "Low", 
            "Informative",
            "NoAlert"
        )]
        [ValidateNotNullOrEmpty()] 
        [string] $Severity, 
         
        [Parameter(Mandatory = $false)] 
        [ValidateSet(
            "Block", 
            "None"
        )]
        [ValidateNotNullOrEmpty()] 
        [string] $Action, 
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()] 
        [string] $FollowedAction, 
         
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [bool] $AllowAppServicePorts,
          
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [bool] $EstablishedConnectionsBlock, 
          
        [Parameter(Mandatory = $false)] 
        [ValidateSet(
            "Permit", 
            "Block"
        )]
        [ValidateNotNullOrEmpty()] 
        [string] $InboundOperation,
        
        [Parameter(Mandatory = $false)] 
        [ValidateSet(
            "Permit", 
            "Block"
        )]
        [ValidateNotNullOrEmpty()] 
        [string] $OutboundOperation, 
        
        [Parameter(Mandatory = $false)] 
        $Rules,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()] 
        [bool] $SendToCd, 
         
        [Parameter(Mandatory = $false)] 
        $ApplyTo 
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        if (($PSBoundParameters.ContainsKey('Enabled') -eq $false) -and
            ($PSBoundParameters.ContainsKey('Severity') -eq $false) -and
            ($PSBoundParameters.ContainsKey('Action') -eq $false) -and
            ($PSBoundParameters.ContainsKey('FollowedAction') -eq $false) -and
            ($PSBoundParameters.ContainsKey('AllowAppServicePorts') -eq $false) -and
            ($PSBoundParameters.ContainsKey('EstablishedConnectionsBlock') -eq $false) -and
            ($PSBoundParameters.ContainsKey('InboundOperation') -eq $false) -and
            ($PSBoundParameters.ContainsKey('OutboundOperation') -eq $false) -and
            ($PSBoundParameters.ContainsKey('Rules') -eq $false) -and
            ($PSBoundParameters.ContainsKey('SendToCd') -eq $false) -and
            ($PSBoundParameters.ContainsKey('ApplyTo') -eq $false)) {
            Write-Error "At least one parameter to edit must be specified."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/policies/security/firewallPolicies/$PolicyName"
        
        $ApiBody = [ordered]@{ }

        if ($PSBoundParameters.ContainsKey('Enabled')) {
            $ApiBody += @{ "enabled" = $Enabled }
        }
        if ($PSBoundParameters.ContainsKey('Severity')) {
            $ApiBody += @{ "severity" = $Severity }
        }
        if ($PSBoundParameters.ContainsKey('Action')) {
            $ApiBody += @{ "action" = $Action }
        }
        if ($PSBoundParameters.ContainsKey('FollowedAction')) {
            $ApiBody += @{ "followedAction" = $FollowedAction }
        }
        if ($PSBoundParameters.ContainsKey('AllowAppServicePorts')) {
            $ApiBody += @{ "allowAppServicePorts" = $AllowAppServicePorts }
        }
        if ($PSBoundParameters.ContainsKey('EstablishedConnectionsBlock')) {
            $ApiBody += @{ "establishedConnectionsBlock" = $EstablishedConnectionsBlock }
        }
        if ($PSBoundParameters.ContainsKey('InboundOperation')) {
            $ApiBody += @{ "inboundOperation" = $InboundOperation }
        }
        if ($PSBoundParameters.ContainsKey('OutboundOperation')) {
            $ApiBody += @{ "outboundOperation" = $OutboundOperation }
        }
        if ($PSBoundParameters.ContainsKey('Rules')) {
            $RulesJson = $Rules | ConvertTo-Json
            $ApiBody += @{ "rules" = $RulesJson }
        }
        if ($PSBoundParameters.ContainsKey('SendToCd')) {
            $ApiBody += @{ "sendToCd" = $SendToCd }
        }
        if ($PSBoundParameters.ContainsKey('ApplyTo')) {
            $ApplyToJson = $ApplyTo | ConvertTo-Json
            $ApiBody += @{ "applyTo" = $ApplyToJson }
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
