# Get-SecureSphereDBOSConnection

## SYNOPSIS
Returns connection details, with asterisks instead of the actual password (for security purposes).

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBOSConnection -SiteName <String> -ServerGroupName <String> -IPAddress <String> [<CommonParameters>]
```

## DESCRIPTION
Returns connection details, with asterisks instead of the actual password (for security purposes).

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBOSConnection -SiteName "Denver" -ServerGroupName "HR-Prod" -IPAddress "192.168.1.1"
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

### IPAddress
This parameter specifies IP address.

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
"host-name": "hostname",
"OS-type": "linux",
"user-name": "root",
"password": "\*\*\*\*\*\*"
"connection-mode": "CIFS_RPC",
"share-name": "temp",
"folder-path": "c:\\temp",
"domain":"IMPERVA",
}

## NOTES

### Error Codes
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10152 - Invalid IP address
IMP-10156 - Connection name not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61719.htm)



