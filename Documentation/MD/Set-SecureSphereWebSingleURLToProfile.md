# Set-SecureSphereWebSingleURLToProfile

## SYNOPSIS
Sets a WebProfileUrl object that represents a single URL in the profile, including its parameters.

## SYNTAX

### Parameter Set 1 (Default)
```
Set-SecureSphereWebSingleURLToProfile -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -WebApplicationName <String> -UrlPath <String> -WebProfileUrl <WebProfileUrl> [<CommonParameters>]
```

## DESCRIPTION
Sets a WebProfileUrl object that represents a single URL in the profile, including its parameters.

## EXAMPLES

### EXAMPLE 1

```powershell
Set-SecureSphereWebSingleURLToProfile -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -WebApplicationName "Official-Website" -UrlPath "some_path_url" -WebProfileUrl $WebProfileUrl

See https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66158.htm for example.
Use classes as parameters. See notes of this cmdlet. Due to lack of official documenation for this parameter it is hard to give exact working example.
```

## PARAMETERS

### SiteName
This parameter specifies the name of the site.

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
This parameter specifies the name of the server group.

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
This parameter specifies the name of the service.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### WebApplicationName
This parameter specifies the name of the web application.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### UrlPath
This parameter specifies the full path of the URL.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### WebProfileUrl
This parameter specifies the WebProfileUrl type object.

```yaml
Type: WebProfileUrl
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
WebProfileUrl
1. urlFullPath - String type. Required when setting the entire profile. Not used when setting a single URL - value is taken from path parameter.
2. status - String type. Acceptable values: "InLearning" or "InProtection". Default is InProtection.
3. contentTypes - String type. Acceptable values: "URL" or "XML" or "JSON". Default is URL.
4. locked - Boolean type. Default is false.
5. allowedMethods - WebProfileAllowedMethod type.
6. parameters - WebProfileParameter type.

Example:
$WebProfileUrl = [WebProfileUrl]::new()
$WebProfileUrl.[attribute] = [value]

### Error Codes
WebProfileAllowedMethod
1. status - String type. Required. Acceptable values: "observed" or "decided".
2. method - String type. Required.

Example:
$WebProfileAllowedMethod = [WebProfileAllowedMethod]::new()
$WebProfileAllowedMethod.[attribute] = [value]

### Error Codes
WebProfileParameter
1. name - String type. Required. 
2. minLength - UInt32 type. Required.
3. maxLength - UInt32 type. Required.
4. type - String type. Acceptable values: "Numeric" or "Latin" or "UTF8". Default is Numeric.
5. required - Boolean type.
6. readOnly - Boolean type.
7. prefix - Boolean type.
8. nullable - Boolean type.
9. additionalAllowedChars - String type. All the additional chars.
10. customValueType - String type.

Notes:
1. When customValueType is set, additionalAllowedChars and type cannot be set (see errors IMP-10137, IMP-10138)
2. If either additionalAllowedChars or type are set, customValueType cannot be set (see errors IMP-10137, IMP-10138)
3. Value for customValueType must be an existing Parameter Type Configuration (a global object)

Example:
$WebProfileParameter = [WebProfileParameter]::new()
$WebProfileParameter.[attribute] = [value]

### Error Codes
Legal Additional HTTP Methods:
BDELETE,LOCK,PROPPATCH
BPROPFIND,M_GET,PUT
BPROPPATCH,MKCOL,RMDIR
BMOVE,MKDIR,RPC_IN_DATA
CONNECT,MOVE,RPC_OUT_DATA
COPY,M_POST,SEARCH
DELETE,NOTIFY,SUBSCRIBE
GET,OPTIONS,TRACE
HEAD,PATCH,UNLINK
INDEX,POLL,UNLOCK
INVOKE,POST,UNSUBSCRIBE

### Error Codes
Legal Additional Allowed Characters:
concatenation,period,plus
osRelatedSeparators,comma,brackets
asciiControlCharacters,percent,angledBrackets
lineBreaks,whiteSpaces,others
asterisk,parenthesis,quote
nullSign,doubleQuote,
slash,httpQuerySeparators,

### Error Codes
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10014 - Application not found
IMP-10015 - Cannot create { } since the body parameter { } is missing
IMP-10016 - The {illegal string} entered is illegal
IMP-10017 - Service not found
IMP-10134 - The URL {} already exists in the profile
IMP-10136 - A new URL cannot be added to profile: too many URLs
IMP-10137 - The parameter {param} cannot set both additional allowed character groups and custom value type.
IMP-10138 - The parameter {param} cannot set both primary value type and custom value type.
IMP-10139 - Cannot set custom value type with name {name} for parameter {param}. Parameter type configuration {name} not found.
IMP-10140 - Max value must be greater or equal to min value
IMP-10141 - Value must be greater than or equal to 0

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66158.htm)



