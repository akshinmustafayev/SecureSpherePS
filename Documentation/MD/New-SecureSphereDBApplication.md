# New-SecureSphereDBApplication

## SYNOPSIS
Creates a DB application with the name indicated by the path parameter dbApplicationName, under the given DB service indicated by the path parameters siteName, serverGroupName and dbServiceName.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereDBApplication -SiteName <String> -ServerGroupName <String> -DBServiceName <String> -DBApplicationName <String> [<CommonParameters>]
```

## DESCRIPTION
Creates a DB application with the name indicated by the path parameter dbApplicationName, under the given DB service indicated by the path parameters siteName, serverGroupName and dbServiceName.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereDBApplication -SiteName "Denver" -ServerGroupName "HR-Prod" -DBServiceName "Payroll-Oracle9" -DBApplicationName "Payroll"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the db application to create.

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
This parameter specifies the name of the parent server group of the db application to create.

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
This parameter specifies the name of the parent service of the db application to create.

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
This parameter specifies the name of the db application to create.

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
IMP-10086 - Cannot create \\" dbApplicationName \\", number of Instances exceeds the system limitation (maxNumOfApplicationsAllowed).

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61658.htm)



