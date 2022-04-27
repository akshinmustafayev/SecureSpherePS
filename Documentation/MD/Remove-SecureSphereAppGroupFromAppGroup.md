# Remove-SecureSphereAppGroupFromAppGroup

## SYNOPSIS
Removes an application with the name indicated by the path parameters siteName, serverGroupName, serviceName and applicationName from an application group with the name indicated by the path parameter applicationGroupName.

## SYNTAX

### Parameter Set 1
```
Remove-SecureSphereAppGroupFromAppGroup -ApplicationGroupName <String> -SiteName <String> -ServerGroupName <String> -ServiceName <String> -ApplicationName <String> [<CommonParameters>]
```

## DESCRIPTION
Removes an application with the name indicated by the path parameters siteName, serverGroupName, serviceName and applicationName from an application group with the name indicated by the path parameter applicationGroupName.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereAppGroupFromAppGroup -ApplicationGroupName "HR-apps" -SiteName "Denver" -ServerGroupName "HR-Prod" -ServiceName "Payroll-Oracle9" -ApplicationName "Payroll"
```

## PARAMETERS

### ApplicationGroupName
This parameter specifies application group name.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### SiteName
This parameter specifies site name.

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
This parameter specifies server group name.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ServiceName
This parameter specifies service name.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ApplicationName
This parameter specifies application name.

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

IMP-10014 - Application not found

IMP-10031 - Application group not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61717.htm)



