# New-SecureSphereDictionary

## SYNOPSIS
Creates a user defined Dictionary (Feed Dictionary, manual dictionary, filter dictionary). The dictionary will be saved under My Dictionaries.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereDictionary -DictionaryName <String> [-Category <String>] [-Description <String>] [-Type <String>] [<CommonParameters>]
```

### Parameter Set 2
```
New-SecureSphereDictionary -DictionaryName <String> [-Category <String>] [-Type <String>] [<CommonParameters>]
```

### Parameter Set 3
```
New-SecureSphereDictionary -DictionaryName <String> [-Category <String>] [<CommonParameters>]
```

## DESCRIPTION
Creates a user defined Dictionary (Feed Dictionary, manual dictionary, filter dictionary). The dictionary will be saved under My Dictionaries.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereDictionary -DictionaryName "dict1" -Category "manual" -Description "my manual dictionary" -Type "SQL"
```

### EXAMPLE 2

```powershell
New-SecureSphereDictionary -DictionaryName "dict1" -Category "manual" -Description "my manual dictionary"
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

### Category
This parameter specifies the dictionary category.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Description
This parameter specifies the description of the dictionary.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Type
This parameter specifies the dictionary type. Default set to Web. For feed dictionaries type is always ‘Web’.

```yaml
Type: String
Parameter Sets: Parameter Set 1, Parameter Set 2
Aliases: none

Required: false
Position: named
Default Value: Web
Accepted Values: Stream
                 Web
                 SQL
Pipeline Input: False
```

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

### Error Codes
IMP-10005 - An item with this name already exists - please select a different name
IMP-10016 - The "category" entered is illegal -OR- The "type" entered is illegal

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66920.htm)



