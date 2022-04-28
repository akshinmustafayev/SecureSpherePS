# Remove-SecureSphereSignature

## SYNOPSIS
Delete a signature from a manual user defined dictionary

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereSignature -DictionaryName <String> -SignatureName <String> [<CommonParameters>]
```

## DESCRIPTION
Delete a signature from a manual user defined dictionary

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereSignature -DictionaryName "dict1" -SignatureName "some signature"
```

## PARAMETERS

### DictionaryName
This parameter specifies the dictionary name to access.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### SignatureName
This parameter specifies the signature name to delete.

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
IMP-10801 - Dictionary {0} not found
IMP-13005 - The operation cannot be completed. Signature predicate in "{policy_name}" policy cannot be empty.
IMP-13013 - Signature not found
IMP-13014 - Attempt to update predefined signature
IMP-13111 - There are more than 1 signature with the specified name

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66927.htm)



