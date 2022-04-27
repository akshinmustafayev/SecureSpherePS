# Edit-SecureSphereDBApplication

## SYNOPSIS
Updates the DB application indicated by the path parameters siteName, serverGroupName, serviceName and dbApplicationName.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereDBApplication -SiteName <String> -ServerGroupName <String> -DBServiceName <String> -DBApplicationName <String> -NewName <String> [<CommonParameters>]
```

## DESCRIPTION
Updates the DB application indicated by the path parameters siteName, serverGroupName, serviceName and dbApplicationName.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereDBApplication -SiteName "Denver" -ServerGroupName "HR-Prod" -DBServiceName "Payroll-Oracle9" -DBApplicationName "Payroll" -NewName "HR"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the db application to update.

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
This parameter specifies the name of the parent server group of the db application to update.

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
This parameter specifies the name of the parent service of the db application to update.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### DBApplicationName
This parameter specifies the name of the db application to update.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### NewName
This parameter specifies the new db application name.

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
IMP-10005 - An item with this name already exists - please select a different name
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10017 - Service not found
IMP-10014 - Application not found
IMP-10071 - Name field must be populated

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61659.htm)



