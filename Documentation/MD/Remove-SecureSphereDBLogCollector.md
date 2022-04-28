# Remove-SecureSphereDBLogCollector

## SYNOPSIS
Delete the log collector indicated by the path parameters siteName, serverGroupName and serviceName.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereDBLogCollector -SiteName <String> -ServerGroupName <String> -ServiceName <String> -LogCollectorName <String> [<CommonParameters>]
```

## DESCRIPTION
Delete the log collector indicated by the path parameters siteName, serverGroupName and serviceName.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereDBLogCollector -SiteName "Default Site" -ServerGroupName "HR-Prod" -ServiceName "oracle" -LogCollectorName "some_log_collector"
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

### ServiceName
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

### LogCollectorName
This parameter specifies the name of the log collector to delete.

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

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66050.htm)



