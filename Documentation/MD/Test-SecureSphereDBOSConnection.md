# Test-SecureSphereDBOSConnection

## SYNOPSIS
Tests an OS connection.

## SYNTAX

### Parameter Set 1 (Default)
```
Test-SecureSphereDBOSConnection [-SiteName <String>] [-ServerGroupName <String>] [-IPAddress <String>] [<CommonParameters>]
```

## DESCRIPTION
Tests an OS connection.

## EXAMPLES

### EXAMPLE 1

```powershell
Test-SecureSphereDBOSConnection -SiteName "Denver" -ServerGroupName "HR-Prod" -IPAddress "192.168.1.1"
```

## PARAMETERS

### SiteName
This parameter specifies site name.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
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

Required: false
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
IMP-10156 - Server not found
IMP-10158 - No credentials to test connection
IMP-10159 - Failed to connect

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61719.htm)



