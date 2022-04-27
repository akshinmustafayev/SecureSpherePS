# Get-SecureSphereParameterTypeConfiguration

## SYNOPSIS
Retrieves a specific parameter type configuration from the parameter type configuration global object list.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereParameterTypeConfiguration -ParameterTypeConfigurationName <String> -RegularExpression <String> [<CommonParameters>]
```

## DESCRIPTION
Retrieves a specific parameter type configuration from the parameter type configuration global object list.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereParameterTypeConfiguration -ParameterTypeConfigurationName "something" -RegularExpression ".*"
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

### Response Body


## NOTES

### Error Codes
IMP-12912 - Parameter type configuration object not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66840.htm)



