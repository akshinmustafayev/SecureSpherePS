# Edit-SecureSphereWebServiceCustomPolicy

## SYNOPSIS
Update a Web Service Custom Policy indicated by the path parameter policyName.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereWebServiceCustomPolicy -PolicyName <String> [-Enabled] [-Severity <String>] [-Action <String>] [-FollowedAction <String>] [-OneAlertPerSession] [-DisplayResponsePage] [-ApplyTo <WebServiceCustomPolicyApplyTo or custom Array or Json>] [-MatchCriteria <MatchCriteria type objects or custom Array or Json>] [-SendToCD] [<CommonParameters>]
```

### Parameter Set 2
```
Edit-SecureSphereWebServiceCustomPolicy -PolicyName <String> [-Enabled] [<CommonParameters>]
```

### Parameter Set 3
```
Edit-SecureSphereWebServiceCustomPolicy -PolicyName <String> [-MatchCriteria <MatchCriteria type objects or custom Array or Json>] [<CommonParameters>]
```

### Parameter Set 4
```
Edit-SecureSphereWebServiceCustomPolicy -PolicyName <String> [-ApplyTo <WebServiceCustomPolicyApplyTo or custom Array or Json>] [<CommonParameters>]
```

## DESCRIPTION
Update a Web Service Custom Policy indicated by the path parameter policyName.

## EXAMPLES

### EXAMPLE 1

```powershell
$WebServiceCustomPolicyApplyTo = [WebServiceCustomPolicyApplyTo]::new()
$WebServiceCustomPolicyApplyTo.SiteName = "some site"
$WebServiceCustomPolicyApplyTo.ServerGroupName = "some group"
$WebServiceCustomPolicyApplyTo.WebServiceName = "some web service"

Edit-SecureSphereWebServiceCustomPolicy -PolicyName "some policy" -MatchCriteria $MatchCriteria

Due to lack of official documentation it is hard to specify $MatchCriteria argument. See https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61861.htm for the examples instead.
```

## PARAMETERS

### PolicyName
This parameter specifies the name of the policy.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Enabled
This parameter specifies the boolean value specifying whether to enable policy.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1, Parameter Set 2
Aliases: none

Required: false
Position: named
Default Value: true
Pipeline Input: False
```

### Severity
This parameter specifies an alert severity.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Accepted Values: high
                 medium
                 low
                 informative
                 noAlert
Pipeline Input: False
```

### Action
This parameter specifies policy action.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Accepted Values: block
                 none
Pipeline Input: False
```

### FollowedAction
This parameter specifies the name of the Action Set.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### OneAlertPerSession
This parameter specifies the boolean value indicating whether to allow only one alert to be created for every web session.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: false
Pipeline Input: False
```

### DisplayResponsePage
This parameter specifies the boolean value indicating whether to show the response page in alerts.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: false
Pipeline Input: False
```

### ApplyTo
This parameter specifies the list of services to apply the policy to.

```yaml
Type: WebServiceCustomPolicyApplyTo or custom Array or Json
Parameter Sets: Parameter Set 1, Parameter Set 4
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### MatchCriteria
This parameter specifies the list of match criteria to add.

```yaml
Type: MatchCriteria type objects or custom Array or Json
Parameter Sets: Parameter Set 1, Parameter Set 3
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### SendToCD
This parameter indicates whether to allow to send the alert information to Community Defense. Applicable for only some predefined policies.

```yaml
Type: Boolean
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

### Error Codes
WebServiceCustomPolicyApplyTo
1. SiteName - String type. Required. The name of the site.
2. ServerGroupName - String type. Required. The name of the server group.
3. WebServiceName - String type. Required. The name of the web service.
4. Operation - String type. Required. Expected values: "add", "remove"

Note: The following match criteria are not supported:
1) Account Takeover Protection Results
2) CAPTCHA Challenge Response
3) Fraud Prevention Results. The [multiple] match criterion can be used more than once.

Example:
$WebServiceCustomPolicyApplyTo = [WebServiceCustomPolicyApplyTo]::new()
$WebServiceCustomPolicyApplyTo.SiteName = "some site"
$WebServiceCustomPolicyApplyTo.ServerGroupName = "some group"
$WebServiceCustomPolicyApplyTo.WebServiceName = "some web service"
$WebServiceCustomPolicyApplyTo.Operation = "add"

### Error Codes
MatchCriteriaApplicationUser
1. Type - String type. Match Criterion name
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Values - Any type. Required. List of user names to match. At least one of the values is mandatory
4. MatchNoOrUnknownUser - Boolean type. Indicates whether to match events with No or Unknown User. Optional for create/update. Default: false

Example:
$MatchCriteriaApplicationUser = [MatchCriteriaApplicationUser]::new()
$MatchCriteriaApplicationUser.Type = [applicationUser is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaApplicationUser.Operation = "atLeastOne"
$MatchCriteriaApplicationUser.Values = @("My IP Group")
$MatchCriteriaApplicationUser.MatchNoOrUnknownUser = $false

### Error Codes
MatchCriteriaAuthenticatedSession
1. Type - String type. Match Criterion name
2. Value - Boolean type. Required. List of user names to match. At least one of the values is mandatory

Example:
$MatchCriteriaAuthenticatedSession = [MatchCriteriaAuthenticatedSession]::new()
$MatchCriteriaAuthenticatedSession.Type = [authenticatedSession is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaAuthenticatedSession.Value = $true

### Error Codes
MatchCriteriaAuthenticationResult
1. Type - String type. Match Criterion name
2. Value - String type. Required. Expected values: "failed", "successful"

Example:
$MatchCriteriaAuthenticationResult = [MatchCriteriaAuthenticationResult]::new()
$MatchCriteriaAuthenticationResult.Type = [authenticationResult is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaAuthenticationResult.Value = "successful"

### Error Codes
MatchCriteriaAuthenticationURL
1. Type - String type. Match Criterion name
2. Value - String type. Required. Expected values: "no", "yes", "yesWithLoginFields"

Example:
$MatchCriteriaAuthenticationURL = [MatchCriteriaAuthenticationURL]::new()
$MatchCriteriaAuthenticationURL.Type = [authenticationUrl is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaAuthenticationURL.Value = "yes"

### Error Codes
MatchCriteriaClientType [Threatradar Bot Protection]
1. Type - String type. Match Criterion name
2. Operation - String type. Required. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. ClientTypes - String type. Required. List of client types to match. Expected values: "trustedBots", "whiteListedBots", "badBot", "generalBot", "unknown", "human"

Example:
$MatchCriteriaAuthenticationURL = [MatchCriteriaAuthenticationURL]::new()
$MatchCriteriaAuthenticationURL.Type = [clientTypeBotProtection is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaAuthenticationURL.Operation = "excludeAll"
$MatchCriteriaAuthenticationURL.ClientTypes = "trustedBots"

### Error Codes
MatchCriteriaDataSet [Attribute Lookup]
1. Type - String type. Match Criterion name
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Field - String type. Name of field to search in the event. Expected values: "acceptLanguages", "additionalLoginField", "contentType", "cookieNames", "cookies", "deviceID", "fileTypes", "headers", "hostNames", "methods", "parameters", "proxyIpAddresses", "refererHostAndURL", "referrerHostname", "referrerUrl", "responseCode", "sourceIPAddresses", "url", "user", "userAgent"
4. LookupDataset - String type. Name of data set to search in.
5. Attribute - String type. Name of attribute to search in the data set. Values can be obtained via API: "Get Lookup Data Set Columns".
6. SearchInUserValues - String type. List of user defined values table. Optional (if searchInLookupDataset is not defined).
7. SearchInLookupDataset - String type. List of lookup datasets to search in. Optional (if searchInUserValues is not defined).

Example:
$MatchCriteriaDataSet = [MatchCriteriaDataSet]::new()
$MatchCriteriaDataSet.Type = [datasetAttributeLookup is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaDataSet.Operation = "excludeAll"
$MatchCriteriaDataSet.Field = "hostNames"
$MatchCriteriaDataSet.LookupDataset = "some name"
$MatchCriteriaDataSet.Attribute = "..."


### Error Codes
MatchCriteriaEnrichmentData
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. UserDefinedFieldName - String type. Name of field to search in the event.
4. SearchInUserValues - String type. List of user defined values table. Optional (if searchInLookupDataset is not defined)
5. SearchInLookupDataset - String type. List of lookup datasets to search in. Optional (if searchInUserValues is not defined).
6. MatchUnknownValue - Boolean type. Match criterion when value does not exist. Default: false

Example:
$MatchCriteriaEnrichmentData = [MatchCriteriaEnrichmentData]::new()
$MatchCriteriaEnrichmentData.Type = [enrichmentData is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaEnrichmentData.Operation = "excludeAll"
$MatchCriteriaEnrichmentData.UserDefinedFieldName = "some field"
$MatchCriteriaEnrichmentData.SearchInUserValues = "some value"
$MatchCriteriaEnrichmentData.SearchInLookupDataset = "some data set"
$MatchCriteriaEnrichmentData.MatchUnknownValue = $false


### Error Codes
MatchCriteriaGenericDictionary
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. SearchMode - String type. Match type for values. Expected values: "contains", "exact"
4. Dictionaries - String type. List of dictionary names to match. At least one value is mandatory.
5. Locations - String type. Locations to search in. Expected values: "url", "parameters", "headers", "urlsAndParameters", "responseContent", "nonNormalizedUrl"

Example:
$MatchCriteriaGenericDictionary = [MatchCriteriaGenericDictionary]::new()
$MatchCriteriaGenericDictionary.Type = [genericDictionarySearch is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaGenericDictionary.Operation = "excludeAll"
$MatchCriteriaGenericDictionary.SearchMode = "exact"
$MatchCriteriaGenericDictionary.Dictionaries = @("dictionary1", "dictionary2")
$MatchCriteriaGenericDictionary.Locations = "headers"

### Error Codes
MatchCriteriaHTTPRequest
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "matchAll", "matchAny", "matchNone"
3. MatchValues - [matchValue] type. Value to match in part of the request. At least one value is mandatory.

Example:
$MatchCriteriaHTTPRequest = [MatchCriteriaHTTPRequest]::new()
$MatchCriteriaHTTPRequest.Type = [httpRequest is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaHTTPRequest.Operation = "matchNone"
$MatchCriteriaHTTPRequest.MatchValues = [matchValue is specified in official documentation but it is still unknown what to specify exactly]


### Error Codes
MatchCriteriaHTTPRequestMatchValue
1. Part - String type. Location in request to search in. Expected values: "url", "parameter", "header"
2. Name - String type. Name of part to search.
3. Operation - String type. Match operation for values. Expected values: "includes", "doesNotInclude", "matchRegExp", "doNotMatchRegExp"
4. Value - String type. Value to match.

Example:
$MatchCriteriaHTTPRequestMatchValue = [MatchCriteriaHTTPRequestMatchValue]::new()
$MatchCriteriaHTTPRequestMatchValue.Part = "url"
$MatchCriteriaHTTPRequestMatchValue.Name = "some name"
$MatchCriteriaHTTPRequestMatchValue.Operation = "includes"
$MatchCriteriaHTTPRequestMatchValue.Value = "accounting"



### Error Codes
MatchCriteriaHTTPRequestAcceptLanguage (Header)
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Values - String type. List of values to match. At least one value is mandatory

Example:
$MatchCriteriaHTTPRequestAcceptLanguage = [MatchCriteriaHTTPRequestAcceptLanguage]::new()
$MatchCriteriaHTTPRequestAcceptLanguage.Type = [httpRequestAcceptLanguage is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaHTTPRequestAcceptLanguage.Operation = "atLeastOne"
$MatchCriteriaHTTPRequestAcceptLanguage.Values = @("value1", "value2")


### Error Codes
MatchCriteriaHTTPRequestContentType (Header)
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Values - String type. List of values to match. At least one value is mandatory.

Example:
$MatchCriteriaHTTPRequestContentType = [MatchCriteriaHTTPRequestContentType]::new()
$MatchCriteriaHTTPRequestContentType.Type = [httpRequestContentType is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaHTTPRequestContentType.Operation = "atLeastOne"
$MatchCriteriaHTTPRequestContentType.CookieNames = @("value1", "value2")

### Error Codes
MatchCriteriaHTTPCookieName
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. CookieNames - MatchCriteriaHTTPCookieNameCookie type or custom array. Value to match in part of the request. At least one value is mandatory.

Example:
$MatchCriteriaHTTPCookieName = [MatchCriteriaHTTPCookieName]::new()
$MatchCriteriaHTTPCookieName.Type = [httpRequestCookieName is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaHTTPCookieName.Operation = "atLeastOne"
$MatchCriteriaHTTPCookieName.CookieNames = [MatchCriteriaHTTPCookieNameCookie list or custom array]

### Error Codes
MatchCriteriaHTTPCookieNameCookie
1. Cookie - String type. Name of part to search.
2. MatchType - String type. Match type for cookie name. Expected values: "prefix", "exact"

Example:
$MatchCriteriaHTTPCookieNameCookie = [MatchCriteriaHTTPCookieNameCookie]::new()
$MatchCriteriaHTTPCookieNameCookie.Cookie = "some cookie"
$MatchCriteriaHTTPCookieNameCookie.MatchType = "exact"



### Error Codes
MatchCriteriaHTTPRequestFileExtension
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Values - String type. List of values to match. At least one value is mandatory.

Example:
$MatchCriteriaHTTPRequestFileExtension = [MatchCriteriaHTTPRequestFileExtension]::new()
$MatchCriteriaHTTPRequestFileExtension.Type = [httpRequestFileExtension is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaHTTPRequestFileExtension.Operation = "atLeastOne"
$MatchCriteriaHTTPRequestFileExtension.CookieNames = @("value1", "value2")

### Error Codes
MatchCriteriaHTTPRequestCookies
1. Type - String type. Match Criterion name.
2. Name - String type. Name of the cookie.
3. Match - String type. Match operation for values. Expected values: "prefix", "exact"
4. Values - String type. List of values to match. At least one value is mandatory.
5. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"

Example:
$MatchCriteriaHTTPRequestCookies = [MatchCriteriaHTTPRequestCookies]::new()
$MatchCriteriaHTTPRequestCookies.Type = [httpRequestCookies is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaHTTPRequestCookies.Name = "some name"
$MatchCriteriaHTTPRequestCookies.Match = "exact"
$MatchCriteriaHTTPRequestCookies.Values = @("value1", "value2")
$MatchCriteriaHTTPRequestCookies.Operation = "atLeastOne"

### Error Codes
MatchCriteriaHTTPRequestHeaderValue
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3.  Values - String type. List of values to match. At least one value is mandatory.
4. Name - String type. Header name.

Example:
$MatchCriteriaHTTPRequestHeaderValue = [MatchCriteriaHTTPRequestHeaderValue]::new()
$MatchCriteriaHTTPRequestHeaderValue.Type = [httpRequestHeaderValue is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaHTTPRequestHeaderValue.Operation = "atLeastOne"
$MatchCriteriaHTTPRequestHeaderValue.Values = @("value1", "value2")
$MatchCriteriaHTTPRequestHeaderValue.Name = "some name"

### Error Codes
MatchCriteriaHTTPRequestHeaderName
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Values - String type. List of values to match. At least one value is mandatory.

Example:
$MatchCriteriaHTTPRequestHeaderName = [MatchCriteriaHTTPRequestHeaderName]::new()
$MatchCriteriaHTTPRequestHeaderName.Type = [httpRequestHeaderName is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaHTTPRequestHeaderName.Operation = "atLeastOne"
$MatchCriteriaHTTPRequestHeaderName.Values = @("value1", "value2")

### Error Codes
MatchCriteriaHTTPRequestHostName
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Values - String type. List of values to match. At least one value is mandatory.

Example:
$MatchCriteriaHTTPRequestHostName = [MatchCriteriaHTTPRequestHostName]::new()
$MatchCriteriaHTTPRequestHostName.Type = [httpRequestHostName is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaHTTPRequestHostName.Operation = "atLeastOne"
$MatchCriteriaHTTPRequestHostName.Values = @("value1", "value2")

### Error Codes
MatchCriteriaHTTPRequestMethod
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Values - String type. List of values to match. At least one value is mandatory.

Example:
$MatchCriteriaHTTPRequestMethod = [MatchCriteriaHTTPRequestMethod]::new()
$MatchCriteriaHTTPRequestMethod.Type = [httpRequestMethod is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaHTTPRequestMethod.Operation = "atLeastOne"
$MatchCriteriaHTTPRequestMethod.Values = @("value1", "value2")

### Error Codes
MatchCriteriaHTTPRequestParameterName
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Values - String type. List of values to match. At least one value is mandatory.

Example:
$MatchCriteriaHTTPRequestParameterName = [MatchCriteriaHTTPRequestParameterName]::new()
$MatchCriteriaHTTPRequestParameterName.Type = [httpRequestParameterName is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaHTTPRequestParameterName.Operation = "atLeastOne"
$MatchCriteriaHTTPRequestParameterName.Values = @("value1", "value2")

### Error Codes
MatchCriteriaHTTPRequestParameterNamePrefix
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Values - String type. List of values to match. At least one value is mandatory.

Example:
$MatchCriteriaHTTPRequestParameterNamePrefix = [MatchCriteriaHTTPRequestParameterNamePrefix]::new()
$MatchCriteriaHTTPRequestParameterNamePrefix.Type = [httpRequestParameterNamePrefix is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaHTTPRequestParameterNamePrefix.Operation = "atLeastOne"
$MatchCriteriaHTTPRequestParameterNamePrefix.Values = @("value1", "value2")

### Error Codes
MatchCriteriaHTTPRequestRefererHostname
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Values - String type. List of values to match. At least one value is mandatory.

Example:
$MatchCriteriaHTTPRequestRefererHostname = [MatchCriteriaHTTPRequestRefererHostname]::new()
$MatchCriteriaHTTPRequestRefererHostname.Type = [httpRequestRefererNamePrefix is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaHTTPRequestRefererHostname.Operation = "atLeastOne"
$MatchCriteriaHTTPRequestRefererHostname.Values = @("value1", "value2")

### Error Codes
MatchCriteriaHTTPRequestRefererURL
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Values - String type. List of values to match. At least one value is mandatory.

Example:
$MatchCriteriaHTTPRequestRefererURL = [MatchCriteriaHTTPRequestRefererURL]::new()
$MatchCriteriaHTTPRequestRefererURL.Type = [httpRequestRefererUrl is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaHTTPRequestRefererURL.Operation = "atLeastOne"
$MatchCriteriaHTTPRequestRefererURL.Values = @("value1", "value2")

### Error Codes
MatchCriteriaHTTPRequestURL
1. Type - String type. Match Criterion name.
2. Match - String type. Match type for URLs. Expected values: "exact", "prefix"
3. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
4. Values - String type. List of values to match. At least one value is mandatory.

Example:
$MatchCriteriaHTTPRequestURL = [MatchCriteriaHTTPRequestURL]::new()
$MatchCriteriaHTTPRequestURL.Type = [httpRequestUrl is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaHTTPRequestURL.Match = "prefix"
$MatchCriteriaHTTPRequestURL.Operation = "atLeastOne"
$MatchCriteriaHTTPRequestURL.Values = @("value1", "value2")

### Error Codes
MatchCriteriaHTTPRequestUserAgent
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Values - String type. List of values to match. At least one value is mandatory.

Example:
$MatchCriteriaHTTPRequestUserAgent = [MatchCriteriaHTTPRequestUserAgent]::new()
$MatchCriteriaHTTPRequestUserAgent.Type = [httpRequestUserAgent is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaHTTPRequestUserAgent.Operation = "atLeastOne"
$MatchCriteriaHTTPRequestUserAgent.Values = @("value1", "value2")

### Error Codes
MatchCriteriaHTTPResponseHeaderName
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Values - String type. List of values to match. At least one value is mandatory.

Example:
$MatchCriteriaHTTPResponseHeaderName = [MatchCriteriaHTTPResponseHeaderName]::new()
$MatchCriteriaHTTPResponseHeaderName.Type = [httpResponseHeaderName is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaHTTPResponseHeaderName.Operation = "atLeastOne"
$MatchCriteriaHTTPResponseHeaderName.Values = @("value1", "value2")

### Error Codes
MatchCriteriaHTTPResponseCode
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Values - UInt32 type. List of values to match. At least one value is mandatory. Code is a 3-digit number.

Example:
$MatchCriteriaHTTPResponseCode = [MatchCriteriaHTTPResponseCode]::new()
$MatchCriteriaHTTPResponseCode.Type = [httpResponseCode is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaHTTPResponseCode.Operation = "atLeastOne"
$MatchCriteriaHTTPResponseCode.Values = @(403, 404)

### Error Codes
MatchCriteriaHTTPSession
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "equals", "notEquals"
3. Value - String type. Value to match. Expected values: "validated", "invalidated", "no session"

Example:
$MatchCriteriaHTTPSession = [MatchCriteriaHTTPSession]::new()
$MatchCriteriaHTTPSession.Type = [httpSession is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaHTTPSession.Operation = "equals"
$MatchCriteriaHTTPSession.Value = "validated"

### Error Codes
MatchCriteriaLookupDataSetSearch
1. Type - String type. Match Criterion name
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Field - String type. Name of field to search in the event. Expected values: "acceptLanguages", "additionalLoginField", "contentType", "cookieNames", "cookies", "deviceID", "fileTypes", "headers", "hostNames", "methods", "parameters", "proxyIpAddresses", "refererHostAndURL", "referrerHostname", "referrerUrl", "responseCode", "sourceIPAddresses", "url", "user", "userAgent"
4. SearchInUserValues - String type. List of user defined values table. Optional (if searchInLookupDataset is not defined).
5. SearchInLookupDataset - String type. List of lookup datasets to search in. Optional (if searchInUserValues is not defined).
6. MatchUnknownValue - Boolean type. Match predicate when value does not exist. Optional. Default value: false.

Example:
$MatchCriteriaLookupDataSetSearch = [MatchCriteriaLookupDataSetSearch]::new()
$MatchCriteriaLookupDataSetSearch.Type = [lookupDatasetSearch is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaLookupDataSetSearch.Operation = "excludeAll"
$MatchCriteriaLookupDataSetSearch.Field = "hostNames"
$MatchCriteriaLookupDataSetSearch.MatchUnknownValue = $false

### Error Codes
MatchCriteriaNumberOfOccurrences
1. Type - String type. Match Criterion name.
2. NumTimes - UInt32 type. Number of times occurred.
2. WithinSeconds - UInt32 type. Size of time window in seconds.
3. Context - String type. Context to count occurrences. Expected values: "serverGroup", "originationSession", "sourceIp", "user"

Example:
$MatchCriteriaNumberOfOccurrences = [MatchCriteriaNumberOfOccurrences]::new()
$MatchCriteriaNumberOfOccurrences.Type = [numberOfOccurrences is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaNumberOfOccurrences.NumTimes = 4
$MatchCriteriaNumberOfOccurrences.WithinSeconds = 5
$MatchCriteriaNumberOfOccurrences.Context = "user"

### Error Codes
MatchCriteriaProfiledRefererHost
1. Type - String type. Match Criterion name.
2. Value - String type. Expected values: "yes", "no"

Example:
$MatchCriteriaProfiledRefererHost = [MatchCriteriaProfiledRefererHost]::new()
$MatchCriteriaProfiledRefererHost.Type = [profiledRefererHost is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaProfiledRefererHost.Value = "no"

### Error Codes
MatchCriteriaProtocols
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Protocols - String type. Protocols to match. Expected values: "http", "https"

Example:
$MatchCriteriaProfiledRefererHost = [MatchCriteriaProfiledRefererHost]::new()
$MatchCriteriaProfiledRefererHost.Type = [protocols is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaProfiledRefererHost.Operation = "excludeAll"
$MatchCriteriaProfiledRefererHost.Protocols = "https"

### Error Codes
MatchCriteriaProxyIPAddresses
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. IpGroups - String[] type. List of names of IP Groups to search in. Optional (if userDefined is provided). If specified, at least one value is mandatory. Values can be obtained via API: "Get All IP Group entries"
4. UserDefined - String[] type. List of IPs to match. Optional (if ipGroups is provided). If specified, at least one value is mandatory.
5. MatchNonProxied - Boolean type. Match events with no proxies. Optional. Default: false.

Example:
$MatchCriteriaProxyIPAddresses = [MatchCriteriaProxyIPAddresses]::new()
$MatchCriteriaProxyIPAddresses.Type = [proxyIpAddresses is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaProxyIPAddresses.Operation = "atLeastOne"
$MatchCriteriaProxyIPAddresses.IpGroups = "group1"
$MatchCriteriaProxyIPAddresses.UserDefined = "192.168.0.55"
$MatchCriteriaProxyIPAddresses.MatchNonProxied = $false

### Error Codes
MatchCriteriaSensitiveDictionarySearch
1. Type - String type. Match Criterion name.
2. SearchMode - String[] type. Match operation for values. Expected values: "contains", "exact"
3. Dictionaries - String[] type. List of dictionary names to match. At least one value is mandatory.
4. Locations - String[] type. Locations to search in. Expected values: "url", "parameters", "headers", "urlsAndParameters", "responseContent", "nonNormalizedUrl"

Example:
$MatchCriteriaSensitiveDictionarySearch = [MatchCriteriaSensitiveDictionarySearch]::new()
$MatchCriteriaSensitiveDictionarySearch.Type = [sensitiveDictionarySearch is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaSensitiveDictionarySearch.Operation = "exact"
$MatchCriteriaSensitiveDictionarySearch.Dictionaries = "dictionary1"
$MatchCriteriaSensitiveDictionarySearch.Locations = "headers"

### Error Codes
MatchCriteriaSignatures
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Signatures - Signature type. Signatures to match.

Example:
$MatchCriteriaSignatures = [MatchCriteriaSignatures]::new()
$MatchCriteriaSignatures.Type = [signatures is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaSignatures.Operation = "atLeastOne"
$MatchCriteriaSignatures.Values = [MatchCriteriaSignaturesSignature type or custom array]

### Error Codes
MatchCriteriaSignaturesSignature
1. Name - String type. Name of the signature
2. IsUserDefined - Boolean type. Specify if signature is User Defined or Predefined.

Example:
$MatchCriteriaSignaturesSignature = [MatchCriteriaSignaturesSignature]::new()
$MatchCriteriaSignaturesSignature.Name = "some name"
$MatchCriteriaSignaturesSignature.IsUserDefined = $false

### Error Codes
MatchCriteriaSourceGeolocation
1. Type - String type. Match Criterion name.
2. Values - String[] type. Name of countries to match. Optional. Mandatory if applyIfUnidentified is false.
3. ApplyIfUnidentified - Boolean type. Indicate whether to apply rule to unidentified locations. Optional. Default value: false.
3. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"

Example:
$MatchCriteriaSourceGeolocation = [MatchCriteriaSourceGeolocation]::new()
$MatchCriteriaSourceGeolocation.Type = [sourceGeolocation is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaSourceGeolocation.Values = @("Value1", "Value2")
$MatchCriteriaSourceGeolocation.ApplyIfUnidentified = $false
$MatchCriteriaSourceGeolocation.Operation = "atLeastOne"


### Error Codes
MatchCriteriaSourceIPAddresses
1. Type - sourceIpAddresses. Predicate name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. IpGroups - String type. List of ipGroups to match. Optional (if userDefined is provided). If specified, at least one value is mandatory. Values can be obtained via API: "Get All IP Group entries".
4. UserDefined - String type. List of user defined IP addresses. Optional (if ipGroups is provided). If specified, at least one value is mandatory.

Example:
$MatchCriteriaSourceIPAddresses = [MatchCriteriaSourceIPAddresses]::new()
$MatchCriteriaSourceIPAddresses.Type = [sourceIpAddresses is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaSourceIPAddresses.Operation = "atLeastOne"
$MatchCriteriaSourceIPAddresses.IpGroups = "some group"
$MatchCriteriaSourceIPAddresses.UserDefined = "1.2.3.4"

### Error Codes
MatchCriteriaTimeOfDay
1. Type - String type. Match Criterion name.
2. Restrictions - Restriction type. List of time periods to which restrict the rule. At least one value is mandatory.

Example:
$MatchCriteriaTimeOfDay = [MatchCriteriaTimeOfDay]::new()
$MatchCriteriaTimeOfDay.Type = [timeOfDay is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaTimeOfDay.Restrictions = [MatchCriteriaTimeOfDayRestriction objects or custom Array]

### Error Codes
MatchCriteriaTimeOfDayRestriction
1. DayOfWeek - String type. Expected values: "sunday", "monday", "tuesday", "wednesdsay", "thursday", "friday", "saturday"
2. From - String type. Format: "hh:mm". Period start time. mm: 00 or 30.
2. To - String type. Format: "hh:mm". Period end time. mm: 00 or 30.

Example:
$MatchCriteriaTimeOfDayRestriction = [MatchCriteriaTimeOfDayRestriction]::new()
$MatchCriteriaTimeOfDayRestriction.DayOfWeek = "sunday"
$MatchCriteriaTimeOfDayRestriction.From = "4:01"
$MatchCriteriaTimeOfDayRestriction.To = "4:30"

### Error Codes
MatchCriteriaViolations
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Values - String type. List of values to match. At least one value is mandatory.

Example:
$MatchCriteriaViolations = [MatchCriteriaViolations]::new()
$MatchCriteriaViolations.Type = [violations is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaViolations.Operation = "atLeastOne"
$MatchCriteriaViolations.Values = @("value1", "value2")

### Error Codes
MatchCriteriaWebPageResponseSize
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "lessOrEquals", "greaterThan"
3. Value - UInt32 type. Size of response page in bytes.

Example:
$MatchCriteriaWebPageResponseSize = [MatchCriteriaWebPageResponseSize]::new()
$MatchCriteriaWebPageResponseSize.Type = [webPageResponseSize is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaWebPageResponseSize.Operation = "greaterThan"
$MatchCriteriaWebPageResponseSize.Values = 5

### Error Codes
MatchCriteriaWebPageResponseTime
1. Type - String type. Match Criterion name.
2. Operation - String type. Match operation for values. Expected values: "lessOrEquals", "greaterThan"
3. Value - UInt32 type. Size of response time in milliseconds.

Example:
$MatchCriteriaWebPageResponseTime = [MatchCriteriaWebPageResponseTime]::new()
$MatchCriteriaWebPageResponseTime.Type = [webPageResponseTime is specified in official documentation but it is still unknown what to specify exactly]
$MatchCriteriaWebPageResponseTime.Operation = "greaterThan"
$MatchCriteriaWebPageResponseTime.Values = 5

### Error Codes
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10010 - Invalid IP address. Please enter a valid IP address, then try again
IMP-10015 - Can not create {ENTITY_NAME} since the body parameter {MISSING_PARAMETER} is missing
IMP-10016 - The "{ILLEGAL_ARGUMENT_NAME}" entered is illegal
IMP-10017 - Service not found
IMP-10023 - One of the parameters [searchInLookupDataset, searchInUserValues] is mandatory. Note: Refers to the Data Set Attribute Lookup and Enrichment Data match criteria. -OR- One of the parameters [ipGroups, userDefined] is mandatory. Note: Refers to the Source IP Addresses and Proxy IP Addresses match criteria.
IMP-10033 - Policy not found
IMP-10094 - Dataset not found.
IMP-10095 - Column named "value" does not exist in the dataset
IMP-10601 - IP group name not found
IMP-10701 - Action Set not found
IMP-10801 - Dictionary {DICTIONARY_NAME} not found
IMP-10831 - Match criterion cannot be applied more than once
IMP-10832 - The 'Within' value must not be less than 5 and a multiple of 5

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61861.htm)



