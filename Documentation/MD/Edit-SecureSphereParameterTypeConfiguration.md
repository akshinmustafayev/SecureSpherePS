# Edit-SecureSphereParameterTypeConfiguration

## SYNOPSIS
Updates a specific object in the Parameter Type Configuration global object list.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereParameterTypeConfiguration -ParameterTypeConfigurationName <String> -RegularExpression <String> [<CommonParameters>]
```

## DESCRIPTION
Updates a specific object in the Parameter Type Configuration global object list. The only field in the object is the regular expression itself so the only function of this method is to update the regular expression field.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereParameterTypeConfiguration -ParameterTypeConfigurationName "something" -RegularExpression ".*"
```

## PARAMETERS

### ParameterTypeConfigurationName
This parameter specifies the parameter type configuration name.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### RegularExpression
This parameter specifies the ParameterTypeConfiguration RegExp.

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
IMP-10005 - An item with this name already exists - please select a different name
IMP-12913 - regularExpression is a required field, cannot be left blank
IMP-12914 - Invalid regular expression

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66839.htm)



