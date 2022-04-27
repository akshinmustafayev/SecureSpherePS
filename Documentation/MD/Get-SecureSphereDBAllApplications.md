# Get-SecureSphereDBAllApplications

## SYNOPSIS
Returns a list of the DB service application names indicated by the path parameters siteName, serverGroupName and dbServiceName.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBAllApplications -SiteName <String> -ServerGroupName <String> -DBServiceName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a list of the DB service application names indicated by the path parameters siteName, serverGroupName and dbServiceName.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBAllApplications -SiteName "Denver" -ServerGroupName "HR-Prod" -DBServiceName "Payroll-Oracle9"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the db service to access.

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
This parameter specifies the name of the parent server group of the db service to access.

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
This parameter specifies the name of the db service to access.

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

### Response Body
{
"applications":["HR", "Development", "Accounts"]
}

## NOTES

### Error Codes
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10017 - Service not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61660.htm)



