# New-SecureSphereDBLogCollector

## SYNOPSIS
Creates a log collector with the name indicated by the path parameter serviceName, under the given server group indicated by the path parameters siteName and serverGroupName.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereDBLogCollector -SiteName <String> -ServerGroupName <String> -ServiceName <String> -DisplayName <String> -Enabled [-GatewayName <String>] -Protocol <String> [-UserName <String>] [-Password <String>] -DBHostName <String> [-Location <String>] [-DeleteProcessLogs] -AdditionalConfiguration <String> -Type <String> [-AccessKey <String>] [-SecretKey <String>] [-Region <String>] [-ConnectionInterval <UInt32>] [<CommonParameters>]
```

## DESCRIPTION
Creates a log collector with the name indicated by the path parameter serviceName, under the given server group indicated by the path parameters siteName and serverGroupName.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereDBLogCollector -SiteName "Default Site" -ServerGroupName "HR-Prod" -ServiceName "oracle" -Enabled $true -DBHostName "host2" -Type "Oracle_RDS" -ServerGroupName "sg" -DisplayName "oracleLC2" -GatewayName "i-0f23d9e5c9ef7b1e5" -DeleteProcessLogs $false -AdditionalConfiguration "&lt;TBD/&gt;" -ConnectionInterval 5
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the db service to create.

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
This parameter specifies the name of the parent server group of the db service to create.

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
This parameter specifies the name of the db service to create.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### DisplayName
This parameter specifies the display name of the log collector.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Enabled
This parameter specifies if collector is enabled.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### GatewayName
This parameter specifies the name of relevant GW.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Protocol
This parameter specifies protocol for communication with the database.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Accepted Values: SQL
                 FTP
Pipeline Input: False
```

### UserName
This parameter specifies credentials to connect to the database.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Password
This parameter specifies credentials to connect to the database.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### DBHostName
This parameter specifies the host name of the database server.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Location
This parameter specifies file location for the AS400.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### DeleteProcessLogs
This parameter specifies if to delete process logs.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### AdditionalConfiguration
This parameter specifies additional configuration. Put "&lt;TBD/&gt;" if no other value.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Type
This parameter specifies database type.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Accepted Values: Teradata
                 DB2_Over_Z_OS
                 DB2_Over_AS_400
                 NetApp
                 Oracle_RDS
                 PostgreSQL_RDS
Pipeline Input: False
```

### AccessKey
This parameter specifies RDS access key.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### SecretKey
This parameter specifies RDS secret key.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Region
This parameter specifies region.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ConnectionInterval
This parameter specifies interval between each time the log collector retrieves logs from the database.

```yaml
Type: UInt32
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

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66048.htm)



