# Get-SecureSphereDBOSConnectionByServerGroup

## SYNOPSIS
Returns connection details, with asterisks instead of the actual password (for security purposes).

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBOSConnectionByServerGroup -SiteName <String> -ServerGroupName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns connection details, with asterisks instead of the actual password (for security purposes).

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBOSConnectionByServerGroup -SiteName "Denver" -ServerGroupName "HR-Prod"
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

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response body
{
0: {
"host-name": "127.0.0.1",
"OS-type": "linux",
"user-name": "root",
"password": "\*\*\*\*\*\*"
"connection-mode": "string",
"share-name": "string",
"folder-path": "string",
"domain":"string",
"ip": "string"
},
1: {
"host-name": "127.0.0.2",
"OS-type": "linux",
"user-name": "root",
"password": "\*\*\*\*\*\*"
"connection-mode": "string",
"share-name": "string",
"folder-path": "string",
"domain":"string",
"ip": "string"
}
}

## NOTES

### Error Codes
IMP-10006 - Site not found
IMP-10008 - Server Group not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61719.htm)



