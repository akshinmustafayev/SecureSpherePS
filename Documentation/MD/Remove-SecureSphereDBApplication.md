# Remove-SecureSphereDBApplication

## SYNOPSIS
Deletes the DB application indicated by the path parameters siteName, serverGroupName , dbServiceName and dbApplicationName.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereDBApplication -SiteName <String> -ServerGroupName <String> -DBServiceName <String> -DBApplicationName <String> [<CommonParameters>]
```

## DESCRIPTION
Deletes the DB application indicated by the path parameters siteName, serverGroupName , dbServiceName and dbApplicationName.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereDBApplication -SiteName "Denver" -ServerGroupName "HR-Prod" -DBServiceName "Payroll-Oracle9" -DBApplicationName "Payroll"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the application to delete.

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
This parameter specifies the name of the parent server group of the application to delete.

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
This parameter specifies the name of the parent service of the application to delete.

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
This parameter specifies the name of the application to delete.

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

IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10017 - Service not found
IMP-10014 - Application not found
IMP-10021 - Application cannot be deleted because it is a default application

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61660.htm)



