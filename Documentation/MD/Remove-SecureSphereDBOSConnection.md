# Remove-SecureSphereDBOSConnection

## SYNOPSIS
Deletes the given connection.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereDBOSConnection -SiteName <String> -ServerGroupName <String> -IPAddress <String> [<CommonParameters>]
```

## DESCRIPTION
Deletes the given connection.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereDBOSConnection -SiteName "Denver" -ServerGroupName "HR-Prod" -IPAddress "192.168.1.1"
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

## NOTES

### Error Codes
IMP-10152 - Invalid IP address

IMP-10006 - Site not found

IMP-10008 - Server Group not found

IMP-10156 - Server not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61719.htm)



