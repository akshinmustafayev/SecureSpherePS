# Get-SecureSphereDBConnection

## SYNOPSIS
Returns connection details, with null password (for security purposes).

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBConnection -SiteName <String> -ServerGroupName <String> -ServiceName <String> -ConnectionName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns connection details, with null password (for security purposes).

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBConnection -SiteName "Denver" -ServerGroupName "HR-Prod" -DBServiceName "service1" -ConnectionName "connection1"
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

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
{
"user-name": "admin",
"password": "1234",
"db-name": "orcl",
"service-name": "string",
"port": "1234",
"connection-string": "string",
"user-mapping":"mapping"
}

## NOTES

### Error Codes
IMP-10006 - Site not found
IMP-10008 - Server group not found
IMP-10017 - Service not found
IMP-10150 - Connection name not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61908.htm)



