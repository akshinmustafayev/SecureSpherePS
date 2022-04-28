# Set-SecureSphereWebEntireProfile

## SYNOPSIS
Sets a Json object that represents the entire profile.

## SYNTAX

### Parameter Set 1 (Default)
```
Set-SecureSphereWebEntireProfile -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -WebApplicationName <String> [-LearnedHosts <String>] [-PatternUrls <WebProfilePatternUrl[]>] [-Cookies <WebProfileCookie[]>] [-ActionUrls <WebProfileLoginActionUrl[]>] [-SusceptibleDirectories <WebProfileSusceptibleDir[]>] [-WebProfileUrls <WebProfileUrl[]>] [-Headers <WebProfileHeader[]>] [<CommonParameters>]
```

## DESCRIPTION
Sets a Json object that represents the entire profile. The existing profile is overridden. All sections are treated as required. Meaning, if a section is missing (e.g. cookies section), then it is treated as empty and current cookies are deleted. The default for susceptibleDirectories is InLearning. Meaning, when this section is missing from the profile that is being set, all susceptible directories are set to learning.

## EXAMPLES

### EXAMPLE 1

```powershell
Set-SecureSphereWebEntireProfile -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -WebApplicationName "Official-Website" -....[other parameters]

See https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66153.htm for example.
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

### LearnedHosts
This parameter specifies the learned hosts.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### PatternUrls
This parameter specifies the WebProfilePatternUrl type objects.

```yaml
Type: WebProfilePatternUrl[]
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Cookies
This parameter specifies the WebProfileCookie type objects.

```yaml
Type: WebProfileCookie[]
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ActionUrls
This parameter specifies the WebProfileLoginActionUrl type objects.

```yaml
Type: WebProfileLoginActionUrl[]
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### SusceptibleDirectories
This parameter specifies the WebProfileSusceptibleDir type objects.

```yaml
Type: WebProfileSusceptibleDir[]
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### WebProfileUrls
This parameter specifies the WebProfileUrl type objects.

```yaml
Type: WebProfileUrl[]
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Headers
This parameter specifies the WebProfileHeader type objects.

```yaml
Type: WebProfileHeader[]
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

### WebProfileLoginDecisionRule
WebProfilePatternUrl
1. Pattern - String type.
2. Type - String type. Acceptable values: "Prefix" or "Suffix"
3. Status - String type. Acceptable values: "InLearning" or "InProtection". Default value is InProtection.
4. ContentTypes - String type. Acceptable values: "URL" or "XML" or "JSON". Default value is URL.
5. AllowedMethods - WebProfileAllowedMethod type. 
6. Parameters - WebProfileParameter type.

Example:
$WebProfilePatternUrl = [WebProfilePatternUrl]::new()
$WebProfilePatternUrl.Pattern = "myPattern"
$WebProfilePatternUrl.Type = "Prefix"
$WebProfilePatternUrl.Status = "InLearning" 
$WebProfilePatternUrl.ContentTypes = "XML"
$WebProfilePatternUrl.AllowedMethods = [WebProfileAllowedMethod type value or custom array or Json. Check WebProfileAllowedMethod object parameters]
$WebProfilePatternUrl.Parameters = [WebProfileParameter type value or custom array or Json. Check WebProfileParameter object parameters]

I recommend to get existing Web Entire Profile to find out which values to enter.

### WebProfileLoginDecisionRule
WebProfileCookie
1. Name - String type. Required.
2. Injection - Boolean type. Required. 
3. Prefix - Boolean type. Required. 
4. Status - String type. Acceptable values: "Learn" or "Protect" or "Ignore". Default is Protect.

Example:
$WebProfileCookie = [WebProfileCookie]::new()
$WebProfileCookie.Name = "some name"
$WebProfileCookie.Injection = $true
$WebProfileCookie.Prefix = $false
$WebProfileCookie.Status = "Learn"

### WebProfileLoginDecisionRule
WebProfileLoginActionUrl
1. Url - String type. Required.
2. Status - String type. Required. Acceptable values: "InLearning" or "InProtection" or "Manual"
3. UserField1 - String type.
4. UserField2 - String type.
5. DefaultDecision - String type. Acceptable values: "Succeeded" or "Failed" or "CantTell".  Required.
6. DecisionRules - WebProfileLoginDecisionRule type.

Example:
$WebProfileLoginActionUrl = [WebProfileLoginActionUrl]::new()
$WebProfileLoginActionUrl.Url = "/hello_world"
$WebProfileLoginActionUrl.Status = "Manual"
$WebProfileLoginActionUrl.UserField1 = ""
$WebProfileLoginActionUrl.UserField2 = ""
$WebProfileLoginActionUrl.DefaultDecision = "Succeeded"
$WebProfileLoginActionUrl.DecisionRules  = [WebProfileLoginDecisionRule type value or custom array or Json. Check WebProfileLoginDecisionRule object parameters]

I recommend to get existing Web Entire Profile to find out which values to enter.

### WebProfileLoginDecisionRule
WebProfileSusceptibleDir
1. Name - String type. Required.
2. Status - String type. Required. Acceptable values: "InLearning" or "InProtection"

Example:
$WebProfileSusceptibleDir = [WebProfileSusceptibleDir]::new()
$WebProfileSusceptibleDir.Name = "some name"
$WebProfileSusceptibleDir.Status = "InLearning"

### WebProfileLoginDecisionRule
WebProfileUrl
1. UrlFullPath - String type. Required when setting the entire profile. Not used when setting a single URL - value is taken from path parameter.
2. Status - String type. Acceptable values: "InLearning" or "InProtection". Default is InProtection.
3. ContentTypes - String type. Acceptable values: "URL" or "XML" or "JSON". Default is URL.
4. Locked - Boolean type. Default is false.
5. AllowedMethods - WebProfileAllowedMethod type.
6. Parameters - WebProfileParameter type.

Example:
$WebProfileUrl = [WebProfileUrl]::new()
$WebProfileUrl.UrlFullPath = "https://some_url.com/hello_world"
$WebProfileUrl.Status = "InProtection"
$WebProfileUrl.ContentTypes = "JSON"
$WebProfileUrl.Locked = $false
$WebProfileUrl.AllowedMethods = [WebProfileAllowedMethod type value or custom array or Json. Check WebProfileAllowedMethod object parameters]
$WebProfileUrl.Parameters = [WebProfileParameter type value or custom array or Json. Check WebProfileParameter object parameters]

I recommend to get existing Web Entire Profile to find out which values to enter.

### WebProfileLoginDecisionRule
WebProfileHeader
1. HeaderName - String type. Required.
2. Base64Encoded - Boolean type. Default is false.

Example:
$WebProfileHeader = [WebProfileHeader]::new()
$WebProfileHeader.HeaderName = "Some name"
$WebProfileHeader.Base64Encoded = "some_base64_string"

### WebProfileLoginDecisionRule
WebProfileAllowedMethod
1. Status - String type. Required. Acceptable values: "observed" or "decided".
2. Method - Type is unknown due to lack of documentation. It is specified "legal http method" though, but it is unknown what to specify exactly.

Example:
$WebProfileAllowedMethod = [WebProfileAllowedMethod]::new()
$WebProfileAllowedMethod.Status = "observed"
$WebProfileAllowedMethod.Method = [unknown what to specify]

Better check https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66153.htm. 
I recommend to get existing Web Entire Profile to find out which values to enter.

### WebProfileLoginDecisionRule
WebProfileParameter
1. Name - String type. Required. 
2. MinLength - UInt32 type. Required.
3. MaxLength - UInt32 type. Required.
4. Type - String type. Acceptable values: "Numeric" or "Latin" or "UTF8". Default is Numeric.
5. Required - Boolean type.
6. ReadOnly - Boolean type.
7. Prefix - Boolean type.
8. Nullable - Boolean type.
9. AdditionalAllowedChars - String type. All the additional chars.
10. CustomValueType - String type.

Notes:
1. When customValueType is set, additionalAllowedChars and type cannot be set (see errors IMP-10137, IMP-10138)
2. If either additionalAllowedChars or type are set, customValueType cannot be set (see errors IMP-10137, IMP-10138)
3. Value for customValueType must be an existing Parameter Type Configuration (a global object)

Example:
$WebProfileParameter = [WebProfileParameter]::new()
$WebProfileParameter.Name = "some name"
$WebProfileParameter.MinLength = 1
$WebProfileParameter.MaxLength = 64
$WebProfileParameter.Type = "UTF8"
$WebProfileParameter.Required = $true
$WebProfileParameter.ReadOnly = $false
$WebProfileParameter.Prefix = $false
$WebProfileParameter.Nullable = $false
$WebProfileParameter.AdditionalAllowedChars = "%"
$WebProfileParameter.CustomValueType = "TEST"

I recommend to get existing Web Entire Profile to find out which values to enter.

### WebProfileLoginDecisionRule
WebProfileLoginDecisionRule
1. Value - String type. Required.
2. Type - String type. Required. Acceptable values: "Redirect" or "ResponseCode" or "Pattern"
3. Result - String type. Required. Acceptable values: "Succeeded" or "Failed" or "CantTell"

Example:
$WebProfileLoginDecisionRule = [WebProfileLoginDecisionRule]::new()
$WebProfileLoginDecisionRule.Value = "some value"
$WebProfileLoginDecisionRule.Type = "Redirect"
$WebProfileLoginDecisionRule.Result = "Succeeded"

I recommend to get existing Web Entire Profile to find out which values to enter.

### WebProfileLoginDecisionRule
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

### WebProfileLoginDecisionRule
Legal Additional Allowed Characters:
concatenation,period,plus
osRelatedSeparators,comma,brackets
asciiControlCharacters,percent,angledBrackets
lineBreaks,whiteSpaces,others
asterisk,parenthesis,quote
nullSign,doubleQuote,
slash,httpQuerySeparators,

### WebProfileLoginDecisionRule
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10014 - Application not found
IMP-10015 - Cannot create { } since the body parameter { } is missing
IMP-10016 - The {illegal string} entered is illegal
IMP-10017 - Service not found
IMP-10136 - A new URL cannot be added to profile: too many URLs
IMP-10137 - The parameter {param} cannot set both additional allowed character groups and custom value type.
IMP-10138 - The parameter {param} cannot set both primary value type and custom value type.
IMP-10139 - Cannot set custom value type with name {name} for parameter {param}. Parameter type configuration {name} not found.
IMP-10140 - Max value must be greater or equal to min value
IMP-10141 - Value must be greater than or equal to 0
IMP-10142 - The folder {folder} was not found in profile susceptible directories list.
IMP-10143 - The cookie {cookie} cannot set injection to true if the cookie is not in protect
IMP-10351 - Required field ''{BLANK_FIELD}'' cannot be left blank

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66152.htm)



