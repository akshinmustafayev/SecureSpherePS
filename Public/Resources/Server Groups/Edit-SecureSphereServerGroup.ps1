function Edit-SecureSphereServerGroup {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()] 
        [string] $SiteName,
         
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()] 
        [string] $ServerGroupName,
         
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [string] $NewName,
        
        [Parameter(Mandatory = $false)]
        [ValidateSet(
            "Active", 
            "Simulation",
            "Disabled"
        )]
        [ValidateNotNullOrEmpty()]
        [string] $OperationMode,
        
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [string] $IgnoreIpGroup,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()] 
        [string] $LimitMonitoringToIpGroup
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        if (($PSBoundParameters.ContainsKey('NewName') -eq $false) -and
            ($PSBoundParameters.ContainsKey('OperationMode') -eq $false) -and
            ($PSBoundParameters.ContainsKey('IgnoreIpGroup') -eq $false) -and
            ($PSBoundParameters.ContainsKey('LimitMonitoringToIpGroup') -eq $false)) {
            Write-Error "At least one parameter to edit must be specified."
            break
        }
        
        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/serverGroups/$SiteName/$ServerGroupName"

        $ApiBody = [ordered]@{}

        if ($PSBoundParameters.ContainsKey('NewName')) {
            $ApiBody += @{ "name" = $NewName }
        }
        if ($PSBoundParameters.ContainsKey('OperationMode')) {
            $ApiBody += @{ "operationMode" = $OperationMode.ToLower() }
        }
        if ($PSBoundParameters.ContainsKey('IgnoreIpGroup')) {
            $ApiBody += @{ "ignoreIpGroup" = $IgnoreIpGroup }
        }
        if ($PSBoundParameters.ContainsKey('LimitMonitoringToIpGroup')) {
            $ApiBody += @{ "limitMonitoringToIpGroup" = $LimitMonitoringToIpGroup }
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
