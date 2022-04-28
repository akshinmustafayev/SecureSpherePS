# New-SecureSphereDBService

## SYNOPSIS
Creates a DB service with the name indicated by the path parameter serviceName, under the given server group indicated by the path parameters siteName and serverGroupName.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereDBService -SiteName <String> -ServerGroupName <String> -DBServiceName <String> -DBServiceType <String> [-Ports <UInt32[]>] [<CommonParameters>]
```

### Parameter Set 2
```
New-SecureSphereDBService -SiteName <String> -ServerGroupName <String> -DBServiceName <String> -DBServiceType <String> [<CommonParameters>]
```

## DESCRIPTION
Creates a DB service with the name indicated by the path parameter serviceName, under the given server group indicated by the path parameters siteName and serverGroupName.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereDBService -SiteName "Denver" -ServerGroupName "HR-Prod" -DBServiceName "Payroll-Oracle9" -DBServiceType "Oracle" -Ports @(1521, 1527)
```

### EXAMPLE 2

```powershell
New-SecureSphereDBService -SiteName "Denver" -ServerGroupName "HR-Prod" -DBServiceName "Payroll-Oracle9" -DBServiceType "Oracle"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the db service to create.

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
This parameter specifies the name of the parent server group of the db service to create.

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
This parameter specifies the name of the db service to create.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### DBServiceType
This parameter specifies DB service type to create.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Accepted Values: Oracle
                 MsSql
                 Sybase
                 Db2
                 Informix
                 Teradata
                 SybaseIQ
                 MySql
                 Netezza
                 Progress
                 Cache
Pipeline Input: False
```

### Ports
This parameter specifies the new db service ports list.

```yaml
Type: UInt32[]
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Accepted Values: 0-65535
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

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61652.htm)



