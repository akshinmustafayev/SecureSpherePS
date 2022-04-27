# Edit-SecureSphereWebAdvancedHTTPSettings

## SYNOPSIS
Updates the web services advanced http settings.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereWebAdvancedHTTPSettings -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -ConnectionTimeout <UInt32> -JsessionIDParamsAsRegularParams -JsessionIDParamsDelimiter <String> -CaseSensitiveUrls -SupportMsEncoding -CombineParameterNamesWithEmptyValue [<CommonParameters>]
```

## DESCRIPTION
Updates the web services advanced http settings.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereWebAdvancedHTTPSettings -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -ConnectionTimeout 300 -JsessionIDParamsAsRegularParams $true -JsessionIDParamsDelimiter "/" -CaseSensitiveUrls $false -SupportMsEncoding $true -CombineParameterNamesWithEmptyValue $true
```

## PARAMETERS

### SiteName
This parameter specifies the site containing the server group.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ServerGroupName
This parameter specifies the server group containing the web service.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### WebServiceName
This parameter specifies the web service of which the plugins will be returned.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ConnectionTimeout
This parameter specifies the connection timeout.

```yaml
Type: UInt32
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### JsessionIDParamsAsRegularParams
This parameter specifies if treat to Jsession ID Params are As Regular Params.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### JsessionIDParamsDelimiter
This parameter specifies the Jsession ID Params Delimiter

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### CaseSensitiveUrls
This parameter specifies if case sensitive Urls.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### SupportMsEncoding
This parameter specifies if Support Ms Encoding.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### CombineParameterNamesWithEmptyValue
This parameter specifies if combine parameter names with empty value.

```yaml
Type: Boolean
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
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10017 - Service not found
IMP-10141 - Value must be greater than or equal to 1
IMP-10148 - Field length must be 1

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69927.htm)



