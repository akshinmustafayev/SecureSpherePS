function New-SecureSphereDiscoveryScan {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $DiscoveryName,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $Name,
        
        [Parameter(Mandatory = $true)]
        $Scheduling,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $ExistingSiteName,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [bool] $AutoAccept,

        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [bool] $ScanExistingServerGroups,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [bool] $ScanIpGroup,
        
        [Parameter(Mandatory = $true)]
        $IpGroups,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [bool] $ScanCloudAccount,
        
        [Parameter(Mandatory = $true)]
        $CloudAccounts,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string[]] $ServiceTypes,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [bool] $ResolveDns,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [bool] $ResolveVersions,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [bool] $EnhancedScanning,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [UInt32] $DiscoveryTimeout,
        
        [Parameter(Mandatory = $true)]
        $GlobalPortConfiguration,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $ServerGroupNamingTemplate,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $ServiceNamingTemplate,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [bool] $CredentialsEnabled,
        
        [Parameter(Mandatory = $true)]
        $OSCredentials,
        
        [Parameter(Mandatory = $true)]
        $DBCredentials
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/discovery/scans/$DiscoveryName"
        
        $ApiBody = [ordered]@{}
        $ApiBody += @{ "name" = $Name }
        $ApiBody += @{ "scheduling" = $Scheduling }
        $ApiBody += @{ "existing-site-name" = $ExistingSiteName }
        $ApiBody += @{ "auto-accept" = $AutoAccept }
        $ApiBody += @{ "scan-existing-server-groups" = $ScanExistingServerGroups }
        $ApiBody += @{ "scan-ip-group" = $ScanIpGroup }
        $ApiBody += @{ "ip-groups" = $IpGroups }
        $ApiBody += @{ "scan-cloud-account" = $ScanCloudAccount }
        $ApiBody += @{ "cloud-accounts" = $CloudAccounts }
        $ApiBody += @{ "service-types" = $ServiceTypes }
        $ApiBody += @{ "resolve-dns" = $ResolveDns }
        $ApiBody += @{ "resolve-versions" = $ResolveVersions }
        $ApiBody += @{ "enhanced-scanning" = $EnhancedScanning }
        $ApiBody += @{ "discovery-timeout" = $DiscoveryTimeout }
        $ApiBody += @{ "global-port-configuration" = $GlobalPortConfiguration }
        $ApiBody += @{ "server-group-naming-template" = $ServerGroupNamingTemplate }
        $ApiBody += @{ "service-naming-template" = $ServiceNamingTemplate }
        $ApiBody += @{ "credentials-enabled" = $CredentialsEnabled }
        $ApiBody += @{ "os-credentials" = $OSCredentials }
        $ApiBody += @{ "db-credentials" = $DBCredentials }
        
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
