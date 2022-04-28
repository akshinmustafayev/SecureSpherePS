# Remove-SecureSphereWebActionSet

## SYNOPSIS
Deletes the action set, indicated by the path parameter: actionSetName.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereWebActionSet -ActionSetName <String> [<CommonParameters>]
```

## DESCRIPTION
Deletes the action set, indicated by the path parameter: actionSetName.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereWebActionSet -ActionSetName "some_set"
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

## NOTES

### Error Codes
IMP-10030 - Delete Not Permitted: default object
IMP-10178 - The Action Set cannot be deleted since it is connected to {}.
IMP-10701 - Action set {} not found
IMP-13213 - Action set of unsupported type

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69445.htm)



