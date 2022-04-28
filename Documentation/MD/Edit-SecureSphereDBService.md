# Edit-SecureSphereDBService

## SYNOPSIS
Updates the DB service indicated by the path parameters siteName, serverGroupName and serviceName.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereDBService -SiteName <String> -ServerGroupName <String> -DBServiceName <String> [-NewName <String>] [-Ports <UInt32[]>] [-TextReplacement <Array>] [-DBMappings <Array>] [-DefaultApplication <String>] [<CommonParameters>]
```

### Parameter Set 2
```
Edit-SecureSphereDBService -SiteName <String> -ServerGroupName <String> -DBServiceName <String> [-NewName <String>] [<CommonParameters>]
```

### Parameter Set 3
```
Edit-SecureSphereDBService -SiteName <String> -ServerGroupName <String> -DBServiceName <String> [-Ports <UInt32[]>] [<CommonParameters>]
```

### Parameter Set 4
```
Edit-SecureSphereDBService [-SiteName <String>] [-ServerGroupName <String>] [-DBServiceName <String>] [-DBMappings <Array>] [<CommonParameters>]
```

## DESCRIPTION
Updates the DB service indicated by the path parameters siteName, serverGroupName and serviceName.

## EXAMPLES

### EXAMPLE 1

```powershell
$DBMappings = @(@{"database" = "finance"; "schema" = "payroll"; "application" = "financeApp"; })

$TextReplacement = @(
    @{
        "location"    = "NormalizedQuery";
        "pattern"     = "jacko.*";
        "replacement" = "NOT_Working";
        "advanced"    = "false";
    }
)

Edit-SecureSphereDBService -SiteName "Denver" -ServerGroupName "HR-Prod" -DBServiceName "Payroll-Oracle9" -NewName "Payroll-Oracle9" -Ports @(1521, 1527) -DefaultApplication "financeApp" -DBMappings $DBMappings -TextReplacement $TextReplacement
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the db service to update.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ServerGroupName
This parameter specifies the name of the parent server group of the db service to update.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### DBServiceName
This parameter specifies the name of the db service to update

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### NewName
This parameter specifies the new db service name.

```yaml
Type: String
Parameter Sets: Parameter Set 1, Parameter Set 2
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Ports
This parameter specifies the new db service ports list.

```yaml
Type: UInt32[]
Parameter Sets: Parameter Set 1, Parameter Set 3
Aliases: none

Required: false
Position: named
Default Value: None
Accepted Values: 0-65535
Pipeline Input: False
```

### TextReplacement
This parameter specifies text replacement. Includes location ( - "NormalizedQuery", "UserName" or "ApplicationUserName"), pattern, replacement and advanced option. The list of replacement-texts replaces the current one. To avoid loss of data, it is recommended to use getDBSerivce first, add the new text-replacement to the current list and then call updateDBService.

```yaml
Type: Array
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### DBMappings
This parameter specifies DB mappings. Includes database name, schema name and the application to map to. The list of db-mappings replaces the current one, to avoid loss of data, it is recommended to use getDBSerivce first, and add the new db-mappings to the current list and then call updateDBService.

```yaml
Type: Array
Parameter Sets: Parameter Set 1, Parameter Set 4
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### DefaultApplication
This parameter specifies the application that new schemas are mapped to by default.

```yaml
Type: String
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
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10005 - An item with this name already exists - please select a different name
IMP-10015 - Cannot create \\"db-service\\" since the body parameter service-type is missing
IMP-10016 - The \\"db-service-type\\" entered is illegal
IMP-10086 - Cannot create \\" dbServiceName \\", number of Instances exceeds the system limitation (maxNumOfServicesAllowed).

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61653.htm)



