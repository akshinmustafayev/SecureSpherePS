# Get-SecureSphereSignature

## SYNOPSIS
Returns the signature details.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereSignature -DictionaryGroup <String> -DictionaryName <String> -SignatureName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns the signature details.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereSignature -DictionaryGroup "some_group01" -DictionaryName "dict1" -SignatureName "some signature"
```

## PARAMETERS

### DictionaryGroup
This parameter specifies the dictionary group.

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
This parameter specifies the dictionary name.

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
This parameter specifies the signature name.

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
" pattern ":" part=\\"hello\\""
"protocols": ["afpover"],
"applyTo":"clientToServer"
"attack":{}
}

## NOTES

### Error Codes
IMP-10016 - The {0} entered is illegal
IMP-10801 - Dictionary "{dictionary_group}/{dictionary_name}" not found
IMP-13013 - Signature not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66928.htm)



