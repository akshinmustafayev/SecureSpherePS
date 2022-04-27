# Edit-SecureSphereDiscoveryScan

## SYNOPSIS
Updates a discovery scan.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereDiscoveryScan [-DiscoveryName <String>] [-Name <String>] [-Scheduling <Schedule>] [-ExistingSiteName <String>] [-AutoAccept] [-ScanExistingServerGroups] [-ScanIpGroup] [-IpGroups <IpGroups>] [-ScanCloudAccount] [-CloudAccounts <CloudAccounts>] [-ServiceTypes <String[]>] [-ResolveDns] [-ResolveVersions] [-EnhancedScanning] [-DiscoveryTimeout <UInt32>] [-GlobalPortConfiguration <PortConfiguration>] [-ServerGroupNamingTemplate <String>] [-ServiceNamingTemplate <String>] [-CredentialsEnabled] [-OSCredentials <OSCredentials>] [-DBCredentials <DBCredentials>] [<CommonParameters>]
```

## DESCRIPTION
Updates a discovery scan.

## EXAMPLES

### EXAMPLE 1

```powershell
$Scheduling = @{
    "occurs" = "none";
}

$IpGroups = @(
    @{
        "ips" = @();
        "display-name" = "AOL IP Addresse"
    }
)

$GlobalPortConfiguration = @{
    "global-port-list-type" = "Recommended for Service Discovery";
    "ip-paths" = @();
}

Edit-SecureSphereDiscoveryScan -DiscoveryName "discoveryScan1" -Name "discoveryScan1" `
    -Scheduling $Scheduling -ExistingSiteName "Site1"
    -AutoAccept $false -ScanExistingServerGroups $true -ScanIpGroup $true
    -IpGroups $IpGroups -ScanCloudAccount $false -CloudAccounts @() `
    -ServiceTypes @("MsSQL", "Db2", "Teradata", "Oracle")
    -ResolveDns $true -ResolveVersions $true -EnhancedScanning $false
    -DiscoveryTimeout 10000 -GlobalPortConfiguration $GlobalPortConfiguration
    -ServerGroupNamingTemplate "$CLASS_C_SUBNET" -ServiceNamingTemplate "$SERVICE_TYPE"
    -CredentialsEnabled $true -OSCredentials @() -DBCredentials @()
```

## PARAMETERS

### DiscoveryName
This parameter specifies discovery name to create.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Name
This parameter specifies name to create.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Scheduling
This parameter specifies schedule.

```yaml
Type: Schedule
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ExistingSiteName
This parameter specifies existing site name.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### AutoAccept
This parameter specifies if AutoAccept is true or false.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ScanExistingServerGroups
This parameter specifies if to scan existing server groups.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ScanIpGroup
This parameter specifies if to scan ip group.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### IpGroups
This parameter specifies ip groups.

```yaml
Type: IpGroups
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ScanCloudAccount
This parameter specifies if to scan cloud account.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### CloudAccounts
This parameter specifies cloud accounts.

```yaml
Type: CloudAccounts
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ServiceTypes
This parameter specifies service types.

```yaml
Type: String[]
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ResolveDns
This parameter specifies if to resolve Dns.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ResolveVersions
This parameter specifies if to resolve versions.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### EnhancedScanning
This parameter specifies if enhanced scanning is enabled.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### DiscoveryTimeout
This parameter specifies discovery timeout.

```yaml
Type: UInt32
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### GlobalPortConfiguration
This parameter specifies global port configuration.

```yaml
Type: PortConfiguration
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ServerGroupNamingTemplate
This parameter specifies server group naming template.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ServiceNamingTemplate
This parameter specifies service naming template.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### CredentialsEnabled
This parameter specifies if credentials enabled.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### OSCredentials
This parameter specifies OS credentials.

```yaml
Type: OSCredentials
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### DBCredentials
This parameter specifies DB credentials.

```yaml
Type: DBCredentials
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

### Error Codes
IMP-14013 - Discovery name already exists

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/77726.htm)



