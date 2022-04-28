# Get-SecureSphereDictionary

## SYNOPSIS
Returns the specified dictionary with a list of its signature names.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDictionary -DictionaryGroup <String> -DictionaryName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns the specified dictionary with a list of its signature names.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDictionary -DictionaryGroup "some group" -DictionaryName "dict1"
```

## PARAMETERS

### DictionaryGroup
This parameter specifies the name of the dictionary group (predefinedDictionaries / predefinedThreatradarDictionaries / myDictionaries).

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

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

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
{
"type":"Web",
"description":"a description of the dictionary",
"signatures":["sig_1","sig_2","sig_3"]
}

## NOTES

### Error Codes
IMP-10016 - The "dictionaryGroup" entered is illegal
IMP-10801 - Dictionary "{dictionary_group}/{dictionary_name}" not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66922.htm)



