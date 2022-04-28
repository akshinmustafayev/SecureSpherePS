# Get-SecureSphereDBAllLogCollectors

## SYNOPSIS
Returns a list of all log collectors' names under the given server group indicated by the path parameters siteName and serverGroupName.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBAllLogCollectors -SiteName <String> -ServerGroupName <String> -ServiceName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a list of all log collectors' names under the given server group indicated by the path parameters siteName and serverGroupName.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBAllLogCollectors -SiteName "Default Site" -ServerGroupName "HR-Prod" -ServiceName "oracle"
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

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
{
"connectors": [
{
"enabled": true,
"host": "host1",
"type": "Oracle_RDS",
"site-name": "Default Site",
"server-group-name": "sg",
"service-name": "oracle",
"display-name": "oracleLC",
"gateway-name": "i-0f23d9e5c9ef7b1e5",
"delete-process-logs": false,
"additional-configuration": "<TBD/\>",
"connection-interval": 5
}],}

## NOTES

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66052.htm)



