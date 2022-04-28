# Get-SecureSphereWebAction

## SYNOPSIS
Retrieves an action from within an action set.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereWebAction -ActionSetName <String> -ActionName <String> [<CommonParameters>]
```

## DESCRIPTION
Retrieves an action from within an action set.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereWebAction -ActionSetName "set01" -ActionName "some_action"
```

## PARAMETERS

### ActionSetName
This parameter specifies the name of the action set.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ActionName
This parameter specifies the name of the action.

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
"type": "GWSyslog",
"protocol": "UDP",
"host": "12.12.12.12",
"port": 12,
"secondaryHost": "12.12.12.13",
"secondaryPort": 13,
"syslogLogLevel": "INFO",
"syslogFacility": "USER",
"actionInterface": "Security Event Log",
"message": "CEF:0\|Imperva Inc.\|SecureSphere\|${SecureSphereVersion}\|${Alert.alertType}"
}

## NOTES

### Error Codes
IMP-10701 - Action set {} not found
IMP-13201 - Action type {} is not supported
IMP-13203 - Action {} not found in action set {}
IMP-13204 - Action {} exists multiple times in action set {}

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61838.htm)



