# Remove-SecureSphereParameterTypeConfiguration

## SYNOPSIS
Deletes a specific parameter type configuration from the parameter type configuration global object list.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereParameterTypeConfiguration -ParameterTypeConfigurationName <String> [<CommonParameters>]
```

## DESCRIPTION
Deletes a specific parameter type configuration from the parameter type configuration global object list.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereParameterTypeConfiguration -ParameterTypeConfigurationName "something"
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

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

### Error Codes
IMP-12912 - Parameter type configuration object not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66841.htm)



