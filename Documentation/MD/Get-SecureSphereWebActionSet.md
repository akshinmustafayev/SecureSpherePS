# Get-SecureSphereWebActionSet

## SYNOPSIS
Retrieves the action set, indicated by the path parameter: actionSetName.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereWebActionSet -ActionSetName <String> [<CommonParameters>]
```

## DESCRIPTION
Retrieves the action set, indicated by the path parameter: actionSetName.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereWebActionSet -ActionSetName "set01" -ActionName "some_action"
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

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
{
"type": "security",
"actions": [
{
"name": "myMXSyslog",
"type": "Syslog"
},{
"name": "MyGWSyslog",
"type": "GWSyslog"
},{
"name": "anotherGatewayLog",
"type": "GWSyslog"
} ]}

## NOTES

### Error Codes
IMP-10701 - The requested action set doesn’t exist
IMP-13213 - The type of the requested action set is not security or any

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69443.htm)



