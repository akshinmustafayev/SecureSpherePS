# New-SecureSphereDBConnection

## SYNOPSIS
Creates a database connection with the given properties.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereDBConnection -SiteName <String> -ServerGroupName <String> -ServiceName <String> -ConnectionName <String> -IPAddress <String> -Port <UInt32> -UserName <String> -Password <String> -DBName <String> [-ServerName <String>] [-UserMapping <String>] [-Instance <String>] [-ConnectionString <String>] [-HomeDirectory <String>] [-TnsAdmin <String>] [-ServiceDirectory <String>] [<CommonParameters>]
```

## DESCRIPTION
Creates a database connection with the given properties.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereDBConnection -SiteName "Denver" -ServerGroupName "HR-Prod" -ServiceName "service1" -ConnectionName "connection1" -IPAddress "127.0.0.1" -UserName "admin" -Password "1234" -DBName "orcl" -ServerName "srvhost01" -Port 1234 -ConnectionString "some_string" -UserMapping "mapping"
```

## PARAMETERS

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

### ConnectionName
This parameter specifies connection name.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### IPAddress
This parameter specifies IP Address.

```yaml
Type: String
Parameter Sets: Parameter Set 1
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

Required: true
Position: named
Default Value: None
Accepted Values: 1-65535
Pipeline Input: False
```

### UserName
This parameter specifies user name.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Password
This parameter specifies password.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
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

Required: true
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
IMP-10001 - Required field
IMP-10006 - Site not found
IMP-10008 - Server group not found
IMP-10017 - Service not found
IMP-10005 - Connection name already in use
IMP-10011 - Protected IP not found
IMP-10152 - Invalid IP
IMP-10153 - Invalid port
IMP-10015 - Bad request (missing parameters)
IMP-10160 - Invalid user mapping
IMP-10161 - Invalid connection string

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61719.htm)



