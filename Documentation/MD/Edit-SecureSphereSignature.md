# Edit-SecureSphereSignature

## SYNOPSIS
Update a signature in the specified dictionary.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereSignature -DictionaryGroup <String> [-DictionaryName <String>] -SignatureName <String> -Pattern <String> [-ApplyTo <String>] -Protocols <String[]> [-SearchIn <String[]>] [-Status <String>] [<CommonParameters>]
```

### Parameter Set 2
```
Edit-SecureSphereSignature -DictionaryGroup <String> -DictionaryName <String> -SignatureName <String> -Pattern <String> -Protocols <String[]> -SearchIn <String[]> [<CommonParameters>]
```

## DESCRIPTION
Update a signature in the specified dictionary. Manual user defined dictionaries allow changing almost all the fields of the signature (except name) while predefined signatures (in Predefined signatures and Predefined ThreatRadar Dictionaries) allow only changing the status of the signature.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereSignature -DictionaryGroup "some_group01" -DictionaryName "dict1" -SignatureName "some signature" -Pattern "part=\"dana2\"" -Protocols "http" -ApplyTo "ClientToServer"
```

## PARAMETERS

### DictionaryGroup
This parameter specifies the dictionary group.

```yaml
Type: String
Parameter Sets: (All)
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
Parameter Sets: (All)
Aliases: none

Required: true
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

### Status
This parameter specifies whether this signature is enabled, partially disabled or disabled in all dictionaries.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Accepted Values: EnabledInAllDictionaries
                 diableFromThisDictionary
                 DisbaledFromAllDictionaries
Pipeline Input: False
```

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

### Error Codes
IMP-10801 - Dictionary {0} not found
IMP-13002 - Invalid Protocol
IMP-13013 - Signature not found
IMP-13014 - Attempt to update predefined signature
IMP-13015 - Illegal Signature Status
IMP-13103 - Invalid signature pattern: Invalid pattern format
IMP-13104 - Signature Protocols list may not be empty.
IMP-13105 - applyTo may not be empty
IMP-13106 - Signature applyTo is invalid: {0}
IMP-13107 - searchIn List may not be empty
IMP-13108 - searchIn List contains invalid value: {0}
IMP-13109 - Invalid signature pattern: {0} (at offset {1})
IMP-13111 - Illegal operation. Signature cannot be added to this Dictionary.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66926.htm)



