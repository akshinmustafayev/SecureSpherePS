# Remove-SecureSphereDBService

## SYNOPSIS
Delete the DB service indicated by the path parameters siteName, serverGroupName and serviceName.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereDBService -SiteName <String> -ServerGroupName <String> -DBServiceName <String> [<CommonParameters>]
```

## DESCRIPTION
Delete the DB service indicated by the path parameters siteName, serverGroupName and serviceName.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereDBService -SiteName "Denver" -ServerGroupName "HR-Prod" -DBServiceName "Payroll-Oracle9"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the db service to delete.

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
This parameter specifies the name of the parent server group of the db service to delete.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### DBServiceName
This parameter specifies the name of the db service to delete.

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
IMP-10060 - Policy cannot be removed since it is locked on application parent application group
IMP-10017 - Service not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61653.htm)



