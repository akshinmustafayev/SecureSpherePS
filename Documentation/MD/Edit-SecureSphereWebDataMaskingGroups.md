# Edit-SecureSphereWebDataMaskingGroups

## SYNOPSIS
Sets the data masking group to be correlated with the service.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereWebDataMaskingGroups -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -DataMaskingGroup <String> [<CommonParameters>]
```

## DESCRIPTION
Sets the data masking group to be correlated with the service.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereWebDataMaskingGroups -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -DataMaskingGroup "myGroup1"
```

## PARAMETERS

### SiteName
This parameter specifies the site containing the server group.

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
This parameter specifies the server group containing the web service.

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
This parameter specifies the web service of which the plugins will be returned.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### DataMaskingGroup
This parameter specifies the data masking group name correlated with the service.

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
IMP-10017 - Service not found
IMP-14002 - Data masking group global object not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69953.htm)



