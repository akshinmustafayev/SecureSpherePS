# New-SecureSphereWebActionSet

## SYNOPSIS
Creates an action set, indicated by the path parameter: actionSetName and the body parameter type.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereWebActionSet -ActionSetName <String> -Type <String> [<CommonParameters>]
```

## DESCRIPTION
Creates an action set, indicated by the path parameter: actionSetName and the body parameter type.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereWebActionSet -ActionSetName "Some Set" -Type "Security"
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

### Type
This parameter specifies the type of the action set.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Accepted Values: Security
                 Any
Pipeline Input: False
```

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

### Error Codes
IMP-10128 - Action set {} already exists
IMP-13201 - Action type {} is not supported
IMP-13206 - Value for parameter {} may not be empty

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69445.htm)



