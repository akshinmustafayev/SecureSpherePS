# Get-SecureSphereDBConnectionForService

## SYNOPSIS
Returns all connections in a given service.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBConnectionForService -SiteName <String> -ServerGroupName <String> -ServiceName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns all connections in a given service.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBConnectionForService -SiteName "Denver" -ServerGroupName "HR-Prod" -DBServiceName "service1"
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

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response body
{
connections: [2]
0: {
port: "50000",
display-name: "test db db2admin@10.1.5.2:sample",
user-name: "db2admin",
db-name: "sample",
ip-address: "10.1.5.2"
}
1: {
port: "50000",
display-name: "test db db2inst1@10.1.2.205:toolsdb",
user-name: "db2inst1",
db-name: "toolsdb",
ip-address: "10.1.2.205"
}
}

## NOTES

### Error Codes
IMP-10006 - Site not found
IMP-10008 - Server group not found
IMP-10017 - Service not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61719.htm)



