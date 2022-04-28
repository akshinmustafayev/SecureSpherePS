# Module manifest for module 'SecureSpherePS'
# Created by: Akshin Mustafayev
# Created on: 16/01/2022

@{
    # Script module or binary module file associated with this manifest.
    RootModule        = 'SecureSpherePS.psm1'
    
    # Version number of this module.
    ModuleVersion     = '0.1'
    
    # ID used to uniquely identify this module
    GUID              = 'e1fa83db-0c39-40c6-ac68-858b57ff3b2e'
    
    # Author of this module
    Author            = 'Akshin Mustafayev'
    
    # Company or vendor of this module
    CompanyName       = 'akshinmustafayev.com'
    
    # Copyright statement for this module
    Copyright         = '(c) 2022 Akshin Mustafayev.'
    
    # Description of the functionality provided by this module
    Description       = 'Module for implementing Imperva SecureSphere'
    
    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion = '3.0'

    # Name of the Windows PowerShell host required by this module
    # PowerShellHostName = ''

    # Minimum version of the Windows PowerShell host required by this module
    # PowerShellHostVersion = ''

    # Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # DotNetFrameworkVersion = ''

    # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # CLRVersion = ''

    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''

    # Modules that must be imported into the global environment prior to importing this module
    # RequiredModules = @()

    # Assemblies that must be loaded prior to importing this module
    # RequiredAssemblies = @()

    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    ScriptsToProcess  = @(
        ".\Private\Classes.ps1",
        ".\Private\Validators.ps1"
    )

    # Type files (.ps1xml) to be loaded when importing this module
    # TypesToProcess = @()

    # Format files (.ps1xml) to be loaded when importing this module
    # FormatsToProcess  = @()

    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    # NestedModules = @()

    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport = @(
        'New-SecureSphereSession',
        'Remove-SecureSphereSession',
        'Set-SecureSphereServer',
        'Get-SecureSphereDocumentation',
        'Get-SecureSphereADCTimeStamp',
        'Get-SecureSphereAllRunningJobs',
        'Stop-SecureSphereJob',
        'Edit-SecureSphereSystemDefinition',
        'Get-SecureSphereSystemDefinitionValue',
        'Get-SecureSphereHTTPProxyConfiguration',
        'Set-SecureSphereHTTPProxyConfiguration',
        'Get-SecureSphereThreatRadarEnabledParameters',
        'Set-SecureSphereThreatRadarEnabledParameters',
        'Get-SecureSphereAttackAnalyticsEnabledParameter',
        'Set-SecureSphereAttackAnalyticsEnabledParameter',
        'New-SecureSphereUser',
        'Get-SecureSphereUsers',
        'Get-SecureSphereUser',
        'Edit-SecureSphereUser',
        'Remove-SecureSphereUser',
        'New-SecureSphereAppGroup',
        'New-SecureSphereAppGroupAsRootAppGroup',
        'Edit-SecureSphereAppGroup',
        'Remove-SecureSphereAppGroup',
        'Add-SecureSphereAppGroupToAppGroup',
        'Remove-SecureSphereAppGroupFromAppGroup'
        'Get-SecureSphereAppGroup',
        'Get-SecureSphereAllAppGroups',
        'New-SecureSphereDBConnection',
        'Get-SecureSphereDBConnection',
        'Edit-SecureSphereDBConnection',
        'Remove-SecureSphereDBConnection',
        'Test-SecureSphereDBConnection',
        'Get-SecureSphereDBConnectionForService',
        'Get-SecureSphereDBAllConnectionsForTag',
        'Get-SecureSphereDBOSConnection',
        'Get-SecureSphereDBOSConnectionByServerGroup',
        'New-SecureSphereDBOSConnection',
        'Edit-SecureSphereDBOSConnection',
        'Remove-SecureSphereDBOSConnection',
        'Test-SecureSphereDBOSConnection',
        'Get-SecureSphereDBAllTags',
        'Remove-SecureSphereDBTag',
        'Set-SecureSphereDBTag',
        'Get-SecureSphereAssessmentPolicyDetails',
        'Get-SecureSphereAssessmentScans',
        'Get-SecureSphereAssessmentTests',
        'Get-SecureSphereAssessmentScanRuns',
        'Get-SecureSphereRunTargetDatabaseDetails',
        'Get-SecureSphereRunFieldNames',
        'Get-SecureSphereScanResultsForDB',
        'Get-SecureSphereAssessmentScanRunsRecords',
        'New-SecureSphereAssessmentPolicy',
        'Get-SecureSphereAssessmentPolicy',
        'Get-SecureSphereAllAssessmentPolicyNames',
        'Get-SecureSphereAssessmentScanResultURLs',
        'Get-SecureSphereAssessmentScanResults',
        'New-SecureSphereAssessmentTest',
        'Get-SecureSphereAssessmentTest',
        'Get-SecureSphereAllAssessmentTestNames',
        'New-SecureSphereAssessmentScan',
        'Get-SecureSphereAssessmentScan',
        'Edit-SecureSphereAssessmentScan',
        'Remove-SecureSphereAssessmentScan',
        'Get-SecureSphereAllAssessmentScanNames',
        'Get-SecureSphereAllClassificationProfileNames',
        'New-SecureSphereClassificationScan',
        'Get-SecureSphereClassificationScan',
        'Get-SecureSphereAllClassificationScanNames',
        'Edit-SecureSphereClassificationScan',
        'Remove-SecureSphereClassificationScan',
        'Get-SecureSphereClassificationScanResults',
        'New-SecureSphereScanProfile',
        'Get-SecureSphereScanProfile',
        'Edit-SecureSphereScanProfile',
        'Remove-SecureSphereScanProfile',
        'Get-SecureSphereAllScanExecutiveSummaryResults',
        'Get-SecureSphereDiscoveryResult',
        'Get-SecureSphereDiscoveryResultNames',
        'Get-SecureSphereDiscovery',
        'Get-SecureSphereDiscoveryNames',
        'New-SecureSphereDiscoveryScan',
        'Edit-SecureSphereDiscoveryScan',
        'Remove-SecureSphereDiscoveryScan',
        'Get-SecureSphereDBAllAgents',
        'Get-SecureSphereDBAllDataInterfacesForAgent',
        'Set-SecureSphereDBDataInterfaceToService',
        'Remove-SecureSphereDBDataInterfaceFromService',
        'Get-SecureSphereDBAgentAdvancedConfigState',
        'Edit-SecureSphereDBAgentAdvancedConfigState',
        'Remove-SecureSphereDBAgentAdvancedConfigStateParameter',
        'Restart-SecureSphereDBAgent',
        'Get-SecureSphereDBAgentGeneralDetails',
        'Get-SecureSphereDBAgentGeneralSettings',
        'Get-SecureSphereDBAgentDiscoverySettings',
        'Edit-SecureSphereDBAgentDiscoverySettings',
        'Get-SecureSphereDBCPUUsageRestrainingConfiguration',
        'Edit-SecureSphereDBCPUUsageRestrainingConfiguration',
        'Get-SecureSphereDBAgentMonitoringRuleByName',
        'Get-SecureSphereDBAllAgentsMonitoringRules',
        'Get-SecureSphereDBDataInterfacesByAgentMonitoringRuleName',
        'Edit-SecureSphereDBAgentMonitoringRule',
        'New-SecureSphereDBAgentMonitoringRule',
        'Get-SecureSphereDBAgentTags',
        'Edit-SecureSphereDBAgentTags',
        'Add-SecureSphereDBMultipleTagsToAgent',
        'Remove-SecureSphereDBAgentTags',
        'Add-SecureSphereDBSingleTagToAgent',
        'Remove-SecureSphereDBSingleTagFromAgent',
        'Set-SecureSphereDBAuditPolicyToService',
        'Remove-SecureSphereDBAuditPolicyFromService'
        'Set-SecureSphereDBAuditPolicyToApplication',
        'Remove-SecureSphereDBAuditPolicyFromApplication'
        'Set-SecureSphereDBAuditPolicyToApplicationGroup',
        'Remove-SecureSphereDBAuditPolicyFromApplicationGroup',
        'Get-SecureSphereDBAuditPoliciesAppliedToService',
        'Get-SecureSphereDBAuditPoliciesAppliedToApplication',
        'Get-SecureSphereDBAuditPoliciesAppliedToApplicationGroup',
        'Get-SecureSphereDBAllAuditPolicies',
        'Get-SecureSphereDBAuditPolicy',
        'New-SecureSphereDBAuditPolicy',
        'Edit-SecureSphereDBAuditPolicy',
        'Edit-SecureSphereDBCloudAccount',
        'Get-SecureSphereDBCloudAccountEntry',
        'New-SecureSphereDBCloudAccount',
        'Remove-SecureSphereDBCloudAccount',
        'Get-SecureSphereDBAllCloudAccounts',
        'Get-SecureSphereDBAllDataEnrichmentPolicies',
        'Get-SecureSphereDBDataEnrichmentPolicy',
        'New-SecureSphereDBDataEnrichmentPolicy',
        'New-SecureSphereDBApplication',
        'Edit-SecureSphereDBApplication',
        'Remove-SecureSphereDBApplication',
        'Get-SecureSphereDBAllApplications',
        'New-SecureSphereDBAuditReport',
        'Get-SecureSphereDBAuditReport',
        'Get-SecureSphereDBAllAuditReports',
        'Set-SecureSphereDBSecurityPolicyToService',
        'Remove-SecureSphereDBSecurityPolicyFromService',
        'Set-SecureSphereDBSecurityPolicyToApplication',
        'Remove-SecureSphereDBSecurityPolicyFromApplication',
        'Set-SecureSphereDBSecurityPolicyToApplicationAndLock',
        'Remove-SecureSphereDBSecurityPolicyFromApplicationAndUnock',
        'Get-SecureSphereDBSecurityPoliciesAppliedToService',
        'Get-SecureSphereDBSecurityPoliciesAppliedToApplication',
        'Get-SecureSphereDBSecurityPoliciesAppliedAndLockedToApplication',
        'Get-SecureSphereDBAllSecurityPolicies',
        'Get-SecureSphereDBSecurityPolicy',
        'New-SecureSphereDBSecurityPolicy',
        'New-SecureSphereDBService',
        'Edit-SecureSphereDBService',
        'Remove-SecureSphereDBService',
        'Get-SecureSphereDBService',
        'Get-SecureSphereDBAllServices',
        'New-SecureSphereDBLogCollector',
        'Edit-SecureSphereDBLogCollector',
        'Remove-SecureSphereDBLogCollector',
        'Get-SecureSphereDBLogCollector',
        'Get-SecureSphereDBAllLogCollectors',
        'Get-SecureSphereDBTableGroupRecords',
        'Edit-SecureSphereDBTableGroupRecords',
        'Start-SecureSphereDBTableGroupIncrementalOperations',
        'Remove-SecureSphereDBAllTableGroupRecords',
        'Get-SecureSphereDBTableGroupsConfiguration',
        'New-SecureSphereDBTableGroup',
        'Remove-SecureSphereDBTableGroup',
        'Get-SecureSphereDBAllTags',
        'New-SecureSphereDBTag',
        'Edit-SecureSphereDBTag',
        'Remove-SecureSphereDBTag',
        'New-SecureSphereDataMaskingGroup',
        'Edit-SecureSphereDataMaskingGroup',
        'Remove-SecureSphereDataMaskingGroup',
        'Get-SecureSphereDataMaskingGroup',
        'Get-SecureSphereAllDataMaskingGroups',
        'Edit-SecureSphereIPGroupEntries',
        'Remove-SecureSphereAllEntriesFromIPGroup',
        'Get-SecureSphereAllIPGroupEntries'
        'New-SecureSphereIPGroup',
        'Remove-SecureSphereIPGroup',
        'Get-SecureSphereAllIPGroups',
        'Get-SecureSphereLookupDataSetColumns',
        'Get-SecureSphereLookupDataSetRecords',
        'Edit-SecureSphereLookupDataSetRecords',
        'Invoke-SecureSphereIncrementalOperationsOnLookupDataSet',
        'Remove-SecureSphereAllLookupDataSetRecords',
        'Get-SecureSphereAllLookupDataSets',
        'Get-SecureSphereParameterTypeConfiguration',
        'Get-SecureSphereAllParameterTypeConfigurationNames',
        'New-SecureSphereParameterTypeConfiguration',
        'Edit-SecureSphereParameterTypeConfiguration',
        'Remove-SecureSphereParameterTypeConfiguration',
        'Get-SecureSphereSSLSettingsGlobalObject',
        'Get-SecureSphereAllSSLSettingsGlobalObjectNameList',
        'New-SecureSphereSSLSettingsGlobalObject',
        'Edit-SecureSphereSSLSettingsGlobalObject',
        'Remove-SecureSphereSSLSettingsGlobalObject',
        'New-SecureSphereURLRewriteGroup',
        'Remove-SecureSphereURLRewriteGroup',
        'Get-SecureSphereAllURLRewriteGroups',
        'Get-SecureSphereURLRewriteGroup',
        'Edit-SecureSphereURLRewriteGroup',
        'New-SecureSphereWebErrorPage',
        'Remove-SecureSphereWebErrorPage',
        'Get-SecureSphereAllWebErrorPages',
        'Get-SecureSphereWebErrorPage',
        'Edit-SecureSphereWebErrorPage',
        'New-SecureSphereWebErrorPagePolicy',
        'Remove-SecureSphereWebErrorPagePolicy',
        'Get-SecureSphereAllWebErrorPagePolicies',
        'Get-SecureSphereWebErrorPagePolicy',
        'Edit-SecureSphereWebErrorPagePolicy',
        'Get-SecureSphereBlockedSources',
        'Get-SecureSphereReleasedSources',
        'Invoke-SecureSphereReleaseBlockedSources',
        'Set-SecureSphereAdminFirstTimePassword',
        'Set-SecureSphereLicense',
        'Set-SecureSphereFlexProtectLicense',
        'Get-SecureSphereGeneratedChallenge',
        'Get-SecureSphereGateway',
        'Move-SecureSphereGatewayToGatewayGroup',
        'Get-SecureSphereGatewayGroup',
        'Remove-SecureSphereGatewayGroup',
        'Get-SecureSphereAllGatewayGroups',
        'Get-SecureSphereAllGatewaysUnderGatewayGroup',
        'New-SecureSphereGatewayGroup',
        'Edit-SecureSphereGatewayAdvancedConfiguration',
        'Get-SecureSphereGatewayAdvancedConfiguration',
        'New-SecureSphereProtectedIP',
        'Edit-SecureSphereProtectedIP',
        'Remove-SecureSphereProtectedIP',
        'Get-SecureSphereAllProtectedIPs',
        'New-SecureSphereServerGroup',
        'Edit-SecureSphereServerGroup',
        'Remove-SecureSphereServerGroup',
        'Get-SecureSphereServerGroup',
        'Get-SecureSphereAllServerGroups',
        'Get-SecureSphereServerGroupsAppliedPolicies',
        'New-SecureSphereSite',
        'Edit-SecureSphereSite',
        'Get-SecureSphereAllSites',
        'Remove-SecureSphereSite',
        'Get-SecureSphereMXChallenge',
        'Get-SecureSphereInstallationStatus',
        'Install-SecureSphere',
        'Get-SecureSphereFTLStatus',
        'Invoke-SecureSphereFTL',
        'New-SecureSphereDictionary',
        'Remove-SecureSphereDictionary',
        'Get-SecureSphereDictionary',
        'Get-SecureSphereAllDictionaries',
        'New-SecureSphereSignature',
        'Edit-SecureSphereSignature',
        'Remove-SecureSphereSignature',
        'Get-SecureSphereSignature',
        'Get-SecureSphereVersion',
        'Edit-SecureSphereLogLevel',
        'Set-SecureSphereAPIMode',
        'Get-SecureSphereEnvironmentExport',
        'Get-SecureSphereAllMXs',
        'Get-SecureSphereWebAction',
        'Edit-SecureSphereWebAction',
        'New-SecureSphereWebAction',
        'Remove-SecureSphereWebAction',
        'Get-SecureSphereWebActionSet',
        'Get-SecureSphereAllWebActionSets',
        'New-SecureSphereWebActionSet',
        'Remove-SecureSphereWebActionSet',
        'New-SecureSphereWebInboundKRPRule',
        'Edit-SecureSphereWebInboundKRPRule',
        'Remove-SecureSphereWebInboundKRPRule',
        'Get-SecureSphereWebInboundKRPRule',
        'Get-SecureSphereAllWebInboundKRPRules',
        'New-SecureSphereWebOutboundKRPRule',
        'Edit-SecureSphereWebOutboundKRPRule',
        'Remove-SecureSphereWebOutboundKRPRule',
        'Get-SecureSphereWebOutboundKRPRule',
        'Get-SecureSphereAllWebOutboundKRPRules',
        'Get-SecureSphereWebReverseProxyIPAddressDetails',
        'Get-SecureSphereAllWebReverseProxyAddresses',
        'New-SecureSphereWebReverseProxyIPAddress',
        'Edit-SecureSphereWebReverseProxyIPAddress',
        'Remove-SecureSphereWebReverseProxyIPAddress',
        'Get-SecureSphereWebReverseProxyAlias',
        'Get-SecureSphereAllWebReverseProxyAliases',
        'New-SecureSphereWebReverseProxyAlias',
        'Edit-SecureSphereWebReverseProxyAlias',
        'Remove-SecureSphereWebReverseProxyAlias',
        'Get-SecureSphereWebTransparentReverseProxyRule',
        'Get-SecureSphereAllWebTransparentReverseProxyRules',
        'New-SecureSphereWebTransparentReverseProxyRule',
        'Edit-SecureSphereWebTransparentReverseProxyRule',
        'Remove-SecureSphereWebTransparentReverseProxyRule',
        'Import-SecureSphereWebSSLCertificate',
        'Remove-SecureSphereWebSSLCertificate',
        'Get-SecureSphereWebSSLCertificate',
        'Get-SecureSphereAllWebSSLCertificates',
        'Get-SecureSphereWebApplication',
        'Get-SecureSphereAllWebApplications',
        'New-SecureSphereWebApplication',
        'Edit-SecureSphereWebApplication',
        'Remove-SecureSphereWebApplication',
        'Get-SecureSphereWebApplicationAppliedPolicies',
        'Get-SecureSphereWebEntireProfile',
        'Set-SecureSphereWebEntireProfile',
        'Get-SecureSphereWebProfileDirectories',
        'Set-SecureSphereWebProfileDirectories',
        'Get-SecureSphereWebSingleURLFromProfile',
        'Remove-SecureSphereWebSingleURLFromProfile',
        'Set-SecureSphereWebSingleURLToProfile',
        'Get-SecureSphereWebSingleHeaderFromProfile',
        'Remove-SecureSphereWebSingleHeaderFromProfile',
        'Set-SecureSphereWebSingleHeaderToProfile',
        'Get-SecureSphereWebService',
        'Get-SecureSphereAllWebServices',
        'New-SecureSphereWebService',
        'Edit-SecureSphereWebService',
        'Remove-SecureSphereWebService',
        'Get-SecureSphereWebServiceHostToApplicationMapping',
        'Get-SecureSphereAllWebServiceHostToApplicationMappings',
        'New-SecureSphereWebServiceHostToApplicationMapping',
        'Remove-SecureSphereWebServiceHostToApplicationMapping',
        'Get-SecureSphereWebServiceForwardedConnections',
        'Edit-SecureSphereWebServiceForwardedConnections',
        'Get-SecureSphereWebServiceReportForwardedClientIPInReverseProxy',
        'Edit-SecureSphereWebServiceReportForwardedClientIPInReverseProxy',
        'Get-SecureSphereWebPlugins',
        'Edit-SecureSphereWebPlugins',
        'Get-SecureSphereWebErrorPage',
        'Edit-SecureSphereWebErrorPage',
        'Get-SecureSphereWebDataMaskingGroups',
        'Edit-SecureSphereWebDataMaskingGroups',
        'Get-SecureSphereWebURLRewriteGroups',
        'Edit-SecureSphereWebURLRewriteGroups',
        'Get-SecureSphereWebServiceAppliedPolicies',
        'Get-SecureSphereWebAdvancedHTTPSettings',
        'Edit-SecureSphereWebAdvancedHTTPSettings',
        'Get-SecureSphereWebViolations',
        'Get-SecureSphereFirewallPolicy',
        'Get-SecureSphereAllFirewallPolicies',
        'New-SecureSphereFirewallPolicy',
        'Edit-SecureSphereFirewallPolicy',
        'Remove-SecureSphereFirewallPolicy',
        'Set-SecureSphereFirewallPolicyToServerGroup',
        'Get-SecureSphereHTTPProtocolPolicy',
        'Get-SecureSphereAllHTTPProtocolPolicies',
        'New-SecureSphereHTTPProtocolPolicy',
        'Edit-SecureSphereHTTPProtocolPolicy',
        'Remove-SecureSphereHTTPProtocolPolicy',
        'Get-SecureSphereHTTP2ProtocolPolicy',
        'Get-SecureSphereAllHTTP2ProtocolPolicies',
        'New-SecureSphereHTTP2ProtocolPolicy',
        'Edit-SecureSphereHTTP2ProtocolPolicy',
        'Remove-SecureSphereHTTP2ProtocolPolicy',
        'Get-SecureSphereHTTPProtocolSignaturesPolicy',
        'Get-SecureSphereAllHTTPProtocolSignaturesPolicies',
        'New-SecureSphereHTTPProtocolSignaturesPolicy',
        'Edit-SecureSphereHTTPProtocolSignaturesPolicy',
        'Remove-SecureSphereHTTPProtocolSignaturesPolicy',
        'Get-SecureSphereSnippetInjectionPolicy',
        'Get-SecureSphereAllSnippetInjectionPolicies',
        'New-SecureSphereSnippetInjectionPolicy',
        'Edit-SecureSphereSnippetInjectionPolicy',
        'Remove-SecureSphereSnippetInjectionPolicy',
        'Get-SecureSphereStreamSignaturesPolicy',
        'Get-SecureSphereAllStreamSignaturesPolicies',
        'New-SecureSphereStreamSignaturesPolicy',
        'Edit-SecureSphereStreamSignaturesPolicy',
        'Remove-SecureSphereStreamSignaturesPolicy',
        'Get-SecureSphereWebApplicationCustomPolicy',
        'Get-SecureSphereAllWebApplicationCustomPolicies',
        'New-SecureSphereWebApplicationCustomPolicy',
        'Edit-SecureSphereWebApplicationCustomPolicy',
        'Remove-SecureSphereWebApplicationCustomPolicy',
        'Get-SecureSphereWebApplicationSignaturesPolicy',
        'Get-SecureSphereAllWebApplicationSignaturesPolicies',
        'New-SecureSphereWebApplicationSignaturesPolicy',
        'Edit-SecureSphereWebApplicationSignaturesPolicy',
        'Remove-SecureSphereWebApplicationSignaturesPolicy',
        'Get-SecureSphereWebCorrelationPolicy',
        'Get-SecureSphereAllCorrelationPolicies',
        'Edit-SecureSphereWebCorrelationPolicy',
        'New-SecureSphereWebCorrelationPolicy',
        'Remove-SecureSphereWebCorrelationPolicy',
        'Get-SecureSphereAllWebProfilePolicies',
        'Get-SecureSphereWebProfilePolicy',
        'Edit-SecureSphereWebProfilePolicy',
        'New-SecureSphereWebProfilePolicy',
        'Remove-SecureSphereWebProfilePolicy',
        'Get-SecureSphereWebServiceCustomPolicy',
        'Get-SecureSphereAllWebServiceCustomPolicies',
        'New-SecureSphereWebServiceCustomPolicy',
        'Edit-SecureSphereWebServiceCustomPolicy',
        'Remove-SecureSphereWebServiceCustomPolicy'
    )

    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport   = @()

    # Variables to export from this module
    # VariablesToExport = @()

    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport   = @()

    # DSC resources to export from this module
    # DscResourcesToExport = @()

    # List of all modules packaged with this module
    # ModuleList = @()

    # List of all files packaged with this module
    FileList          = @()

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData       = @{
        PSData = @{
            # Tags applied to this module. These help with module discovery in online galleries.
            Tags       = @(
                "powershell",
                "powershell-gallery",
                "readthedocs",
                "rest",
                "api",
                "securesphere",
                "waf",
                "Imperva"
            )

            # A URL to the license for this module.
            LicenseUri = 'https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61935.htm'

            # A URL to the main website for this project.
            ProjectUri = 'https://github.com/akshinmustafayev/SecureSpherePS'

            # A URL to an icon representing this module.
            IconUri    = ''

            # ReleaseNotes of this module
            # ReleaseNotes = ''

            # External dependent modules of this module
            # ExternalModuleDependencies = ''

        } # End of PSData hashtable

    } # End of PrivateData hashtable

    # HelpInfo URI of this module
    HelpInfoURI       = 'https://github.com/akshinmustafayev/SecureSpherePS/Documentation'

    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''
}