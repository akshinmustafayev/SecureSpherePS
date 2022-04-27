# Edit-SecureSphereDBConnection

## SYNOPSIS
Updates an existing connection with the given properties. Updating an IP is forbidden.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereDBConnection -SiteName <String> -ServerGroupName <String> -DBServiceName <String> -ConnectionName <String> [-Port <UInt32>] [-UserName <String>] [-Password <String>] [-DBName <String>] [-ServerName <String>] [-UserMapping <String>] [-Instance <String>] [-ConnectionString <String>] [-HomeDirectory <String>] [-TnsAdmin <String>] [-ServiceDirectory <String>] [<CommonParameters>]
```

### Parameter Set 2
```
Edit-SecureSphereDBConnection -SiteName <String> -ServerGroupName <String> -DBServiceName <String> -ConnectionName <String> [-UserName <String>] [-Password <String>] [<CommonParameters>]
```

### Parameter Set 3
```
Edit-SecureSphereDBConnection -SiteName <String> -ServerGroupName <String> -DBServiceName <String> -ConnectionName <String> [<CommonParameters>]
```

## DESCRIPTION
Updates an existing connection with the given properties. Updating an IP is forbidden.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereDBConnection -SiteName "Denver" -ServerGroupName "HR-Prod" -ServiceName "service1" -ConnectionName "connection1" -UserName "admin" -Password "1234"
```

## PARAMETERS

### SiteName
This parameter specifies site name.

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
This parameter specifies server group name.

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
This parameter specifies DB service name.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ConnectionName
This parameter specifies connection name.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Port
This parameter specifies port.

```yaml
Type: UInt32
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Accepted Values: 1-65535
Pipeline Input: False
```

### UserName
This parameter specifies user name.

```yaml
Type: String
Parameter Sets: Parameter Set 1, Parameter Set 2
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Password
This parameter specifies password.

```yaml
Type: String
Parameter Sets: Parameter Set 1, Parameter Set 2
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### DBName
This parameter specifies DB name. In the UI this is called named instance for MSSQL, SID for Oracle, and Database for the remainder.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ServerName
This parameter specifies server name. Optional for Informix and MSSQL only. In the UI this is called domain name for MSSQL.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### UserMapping
This parameter specifies user mapping. The display name of the user mapping (optional).

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Instance
This parameter specifies DB2 instance (For DB2 only).

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ConnectionString
The display name of the connection string to use.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### HomeDirectory
This parameter specifies home directory (For DB2 only).

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### TnsAdmin
The TNS admin for Oracle (For Oracle only).

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ServiceDirectory
This parameter specifies the service directory (For Oracle, Sybase, DB2 and MSSQL only).

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
IMP-10008 - Server group not found
IMP-10017 - Service not found
IMP-10150 - Connection name not found
IMP-10160 - Invalid user mapping
IMP-10161 - Invalid connection string

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61719.htm)



