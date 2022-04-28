# Remove-SecureSphereDictionary

## SYNOPSIS
Deletes a user defined dictionary (My Dictionaries) and all its signatures.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereDictionary -DictionaryName <String> [<CommonParameters>]
```

## DESCRIPTION
Deletes a user defined dictionary (My Dictionaries) and all its signatures.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereDictionary -DictionaryName "dict1"
```

## PARAMETERS

### DictionaryName
This parameter specifies the dictionary name to delete.

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
IMP-10801 - Dictionary "{dictionary_group}/{dictionary_name}" not found
IMP-13004 - The Manual Dictionary {dictionary_name} cannot be deleted since it is connected to Policy {policy_name}.
IMP-13005 - The operation cannot be completed. Signature predicate in "{policy_name}" policy cannot be empty.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66921.htm)



