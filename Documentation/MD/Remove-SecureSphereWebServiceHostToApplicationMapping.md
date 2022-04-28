# Remove-SecureSphereWebServiceHostToApplicationMapping

## SYNOPSIS
Removes the application mapping indicated by the path parameter priority, from the service indicated by the path parameters siteName, serverGroupName and webServiceName.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereWebServiceHostToApplicationMapping -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -Priority <UInt32> [<CommonParameters>]
```

## DESCRIPTION
Removes the application mapping indicated by the path parameter priority, from the service indicated by the path parameters siteName, serverGroupName and webServiceName.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereWebServiceHostToApplicationMapping -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -Priority 2
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the application to map.

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
This parameter specifies the name of the parent server group of the application to map.

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
This parameter specifies the name of the parent service of the application to map.

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
This parameter specifies the priority of the mapping to remove.

```yaml
Type: UInt32
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
IMP-10014 - Application not found
IMP-10017 - Service not found
IMP-10022 - Application priority is not unique
IMP-10211 - Host to application mapping was not found. A mapping with the specified host/priority does not exist
IMP-10021 - Host to Application Mapping not found, when the priority is not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61853.htm)



