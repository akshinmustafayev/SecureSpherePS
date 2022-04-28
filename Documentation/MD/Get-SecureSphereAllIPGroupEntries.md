# Get-SecureSphereAllIPGroupEntries

## SYNOPSIS
Get a list of the entries in the requested IP group.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereAllIPGroupEntries -IPGroupName <String> [<CommonParameters>]
```

## DESCRIPTION
Get a list of the entries in the requested IP group.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereAllIPGroupEntries -IPGroupName "some group"
```

## PARAMETERS

### IPGroupName
This parameter specifies the name of the IP Group.

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
[{"type":"single","ipAddressFrom":"10.0.0.1"},
{"type":"network","networkAddress":"10.10.0.0","cidrMask":"32"},…]

## NOTES

### Error Codes
IMP-10016 - The "value" entered is illegal
IMP-10601 - IP group name not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61640.htm)



