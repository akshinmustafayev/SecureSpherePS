# Remove-SecureSphereWebAction

## SYNOPSIS
Deletes an action from an action set.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereWebAction -ActionSetName <String> -ActionName <String> [<CommonParameters>]
```

## DESCRIPTION
Deletes an action from an action set.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereWebAction -ActionSetName "some_set" -ActionName "some_action"
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

## NOTES

### Error Codes
IMP-10701 - Action set {} not found
IMP-13201 - Action type {} is not supported
IMP-13203 - Action {} not found in action set {}
IMP-13204 - Action {} exists multiple times in action set {}

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66914.htm)



