# New-SecureSphereWebServiceHostToApplicationMapping

## SYNOPSIS
Map an application with the name indicated by the path parameter webApplicationName with the priority specified by the path parameter priority, to the service with the name indicated by the path parameters siteName, serverGroupName and webServiceName.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereWebServiceHostToApplicationMapping -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -WebApplicationName <String> -Priority <UInt32> -HostMatchType <String> -HostName <String> [<CommonParameters>]
```

## DESCRIPTION
Map an application with the name indicated by the path parameter webApplicationName with the priority specified by the path parameter priority, to the service with the name indicated by the path parameters siteName, serverGroupName and webServiceName.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereWebServiceHostToApplicationMapping -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -WebApplicationName "myapp" -Priority 2 -HostMatchType Suffix -HostName "myHost"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the application.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ServerGroupName
This parameter specifies the name of the parent server group of the application.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### WebServiceName
This parameter specifies the name of the parent service of the application.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### WebApplicationName
This parameter specifies the name of the web application to map.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Priority
This parameter specifies the priority of the mapping entry.

```yaml
Type: UInt32
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### HostMatchType
This parameter specifies defines match type of Host.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Accepted Values: Prefix
                 Suffix
                 Exact
Pipeline Input: False
```

### HostName
This parameter specifies the Host Name mappings.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
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
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10014 - Application not Found
IMP-10015 - The required body parameter is missing
IMP-10016 - The host match type entered is illegal
IMP-10016 - The host entered is illegal
IMP-10016 - The priority entered is illegal
IMP-10017 - Service not found
IMP-10022 - Priority is not unique
IMP-10212 - A Host Mapping with host \\"{host}\\", Host match type \\"{match}\\", exclude URLs \\"{exclude}\\", include URLs \\"{include}\\" already exists. Please enter a unique host, match type, URL combination

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61852.htm)



