# New-SecureSphereSignature

## SYNOPSIS
Creates a signature in a manual user defined dictionary.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereSignature -DictionaryName <String> -SignatureName <String> -Pattern <String> [-ApplyTo <String>] -Protocols <String[]> [-SearchIn <String[]>] [<CommonParameters>]
```

### Parameter Set 2
```
New-SecureSphereSignature -DictionaryName <String> -SignatureName <String> -Pattern <String> -Protocols <String[]> [<CommonParameters>]
```

## DESCRIPTION
Creates a signature in a manual user defined dictionary.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereSignature -DictionaryName "dict1" -SignatureName "some signature" -Pattern "part=\"dana\"" -Protocols "http" -ApplyTo "ClientToServer"
```

## PARAMETERS

### DictionaryName
This parameter specifies the dictionary name.

```yaml
Type: String
Parameter Sets: (All)
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
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Pattern
This parameter specifies the signature pattern.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ApplyTo
Search direction: which direction of the traffic to search for the signature in - relevant only for stream signatures

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: Web
Accepted Values: ClientToServer
                 ServerToClient
                 BothDirections
Pipeline Input: False
```

### Protocols
This parameter specifies on which protocols to search for this signature.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Accepted Values: http
                 https
Pipeline Input: False
```

### SearchIn
This parameter specifies possible applications.

```yaml
Type: String[]
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Accepted Values: Query
                 ParsedQuery
                 Url
                 Parameters
                 Stream
                 Headers
                 UrlsAndParameters
                 ResponseContent
                 onNormalizedUrl
                 SqlInjection
                 CrossSiteScripting
                 DirectoryTraversal
                 DataLeakage
                 RequestBody
Pipeline Input: False
```

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

### Error Codes
IMP-10016 - The "searchIn" entered is illegal -OR- The "applyTo" entered is illegal
IMP-10801 - Dictionary {0} not found
IMP-13103 - Invalid signature pattern: Invalid pattern format
IMP-13104 - Signature Protocols list may not be empty.
IMP-13105 - applyTo may not be empty
IMP-13106 - Signature applyTo is invalid: {0}
IMP-13107 - searchIn List may not be empty
IMP-13108 - searchIn List contains invalid value: {0}
IMP-13109 - Invalid signature pattern: {0} (at offset {1})
IMP-13110 - A signature with the same name already exists
IMP-13111 - Illegal operation. Signature cannot be added to this Dictionary.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66925.htm)



