# Edit-SecureSphereHTTP2ProtocolPolicy

## SYNOPSIS
Updates the http2 protocol policy, indicated by the path parameter: policyName.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereHTTP2ProtocolPolicy -PolicyName <String> -Rules <HTTPPolicyParameteredRule[] or Custom array or Json> -Exceptions <HTTPPolicyException[] or Custom array or Json> -DisplayResponsePage -BytesPerSecond <UInt32> -LeadTime <UInt32> -ResendTime <UInt32> -ApplyTo <HTTPPolicyApplyTo[] or Custom array or Json> [<CommonParameters>]
```

## DESCRIPTION
Updates the http2 protocol policy, indicated by the path parameter: policyName.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereHTTP2ProtocolPolicy -PolicyName "some policy" ....
See https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70365.htm for example.
```

## PARAMETERS

### PolicyName
This parameter specifies the name of the policy.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Rules
This parameter specifies the HTTPPolicyParameteredRule type objects.

```yaml
Type: HTTPPolicyParameteredRule[] or Custom array or Json
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Exceptions
This parameter specifies the HTTPPolicyException type objects.

```yaml
Type: HTTPPolicyException[] or Custom array or Json
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### DisplayResponsePage
This parameter specifies the value indicating whether to display the response page.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### BytesPerSecond
This parameter specifies the maximum number of Bytes Per Second that makes a connection "slow".

```yaml
Type: UInt32
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### LeadTime
This parameter specifies the number of seconds after which to start calculating the traffic rate.

```yaml
Type: UInt32
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ResendTime
This parameter specifies the number of seconds between sending violations of continuous slow HTTP/S attack.

```yaml
Type: UInt32
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ApplyTo
This parameter specifies the HTTPPolicyApplyTo type objects.

```yaml
Type: HTTPPolicyApplyTo[] or Custom array or Json
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

HTTPPolicyParameteredRule
1. Name - String type. Required. The name of the rule.
2. Enabled - Boolean type. Required. Boolean value specifying whether this rule is enabled.
3. Severity - String type. Required. The severity of the rule. Expected values: "noAlert", "informative", "low", "medium", "high".
4. Action - String type. Required. Immediate action when this rule is invoked. Expected values: "none", "block"
5. FollowedAction - String type. Required. Followed action after this rule is invoked. 
6. Parameters - Map[String, Object] type. Required. Parameters that are specific to certain rules.

Example:
$HTTPPolicyParameteredRule = [HTTPPolicyParameteredRule]::new()
$HTTPPolicyParameteredRule.Name = "Abnormally Long Header Line"
$HTTPPolicyParameteredRule.Enabled = $true
$HTTPPolicyParameteredRule.Severity = "high"
$HTTPPolicyParameteredRule.Action = "block"
$HTTPPolicyParameteredRule.FollowedAction = "Long IP Block"
$HTTPPolicyParameteredRule.Parameters = @(
@{"maxLenAllowedHeaderName" = 5000},
@{"maxLenAllowedHeaderValue" = 30}
)

HTTPPolicyException
1. RuleName - String type. Required. The name of the rule to which the exception refers.
2. Comment - String type. Required. User comment for the exception.
3. Predicates - Different predicate types. Required. Predicates for which the exception will apply.

Example:
$HTTPPolicyException = [HTTPPolicyException]::new()
$HTTPPolicyException.RuleName = "Abnormally Long Header Line"
$HTTPPolicyException.Comment = "comment"
$HTTPPolicyException.Predicates = [..any predicate type object\\s..; See predicate types examples]

HTTPPolicyApplyTo
1. SiteName - String type. Required. The name of the site.
2. ServerGroupName - String type. Required. The name of the server group.
3. WebServiceName - String type. Required. The name of the web service.
4. WebApplicationName - String type. Required. The name of the web application.

Example:
$HTTPPolicyApplyTo = [HTTPPolicyApplyTo]::new()
$HTTPPolicyApplyTo.SiteName = "some site"
$HTTPPolicyApplyTo.ServerGroupName = "some group"
$HTTPPolicyApplyTo.WebServiceName = "some web service"
$HTTPPolicyApplyTo.WebApplicationName = "some web app"

HTTPPolicyPredicateRequestHeaderValue
1. Type - httpRequestHeaderValue type. Required. Predicate name.
2. Operation - String type. Required. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Name - String type. Required. 
4. Values - String type. Required. List of values to match.

Example:
$HTTPPolicyPredicateRequestHeaderValue = [HTTPPolicyPredicateRequestHeaderValue]::new()
$HTTPPolicyPredicateRequestHeaderValue.Type = [value is unknown due to poor documentation]
$HTTPPolicyPredicateRequestHeaderValue.Operation = "atLeastOne"
$HTTPPolicyPredicateRequestHeaderValue.Name = "some name"
$HTTPPolicyPredicateRequestHeaderValue.Values = "value1"

HTTPPolicyPredicateRequestParameterName
1. Type - httpRequestHeaderValue type. Required. Predicate name.
2. Operation - String type. Required. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Values - String type. Required. List of values to match.

Example:
$HTTPPolicyPredicateRequestParameterName = [HTTPPolicyPredicateRequestParameterName]::new()
$HTTPPolicyPredicateRequestParameterName.Type = [value is unknown due to poor documentation]
$HTTPPolicyPredicateRequestParameterName.Operation = "atLeastOne"
$HTTPPolicyPredicateRequestParameterName.Values = "value1"


HTTPPolicyPredicateRequestURL
1. Type - httpRequestHeaderValue type. Required. Predicate name.
2. Match - String type. Required. Match values according to. Expected values: "exact", "prefix"
3. Operation - String type. Required. Match operation for values. Expected values: "atLeastOne", "excludeAll"
4. Values - String type. Required. List of values to match.

Example:
$HTTPPolicyPredicateRequestURL = [HTTPPolicyPredicateRequestURL]::new()
$HTTPPolicyPredicateRequestURL.Type = [value is unknown due to poor documentation]
$HTTPPolicyPredicateRequestURL.Match = "exact"
$HTTPPolicyPredicateRequestURL.Operation = "atLeastOne"
$HTTPPolicyPredicateRequestURL.Values = "value1"


HTTPPolicyPredicateServices
1. Type - services. Required. Predicate name.
2. Operation - String type. Required. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Services - List of Services to match.

Example:
$HTTPPolicyPredicateServices = [HTTPPolicyPredicateServices]::new()
[parameters are unknown due to poor documentation]


### Error Codes
HTTPPolicyPredicateServicesService
1. SiteName - String type. Required. The name of the site in which the service is.
2. ServerGroupName - String type. Required. The name of the server group in which the service is.
3. ServiceName - String type. Required. The name of the service.

Example:
$HTTPPolicyPredicateServicesService = [HTTPPolicyPredicateServicesService]::new()
$HTTPPolicyPredicateServicesService.SiteName = "site1"
$HTTPPolicyPredicateServicesService.ServerGroupName = "some gorup"
$HTTPPolicyPredicateServicesService.ServiceName = "service 1"

### Error Codes
HTTPPolicyPredicateSourceIPAddresses
1. Type - sourceIpAddresses. Predicate name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. UserDefined - String type. List of user defined IP addresses.
4. IpGroups - String type. List of ipGroups to match.

Example:
$HTTPPolicyPredicateSourceIPAddresses = [HTTPPolicyPredicateSourceIPAddresses]::new()
$HTTPPolicyPredicateSourceIPAddresses.userDefined = "1.2.3.4"

### Error Codes
IMP-10005 - An item with this name already exists - please select a different name
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10015 - Can not create {ENTITY_NAME} since the body parameter {MISSING_PARAMETER} is missing
IMP-10016 - The "{ILLEGAL_ARGUMENT_NAME}" entered is illegal
IMP-10017 - Service not found
IMP-10032 - The "{ILLEGAL_FIELD_NAME}" value entered is illegal
IMP-10062 - Unrecognized property: {PROPERTY_NAME}
IMP-10119 - Predicate type is not supported: {PREDICATE_TYPE}
IMP-10141 - Value must be greater than or equal to {MIN_VALUE}
IMP-10144 - Value must be less than or equal to {MAX_VALUE}
IMP-10146 - This is a predefined ADC item that cannot be changed
IMP-10811 - Rule {RULE_NAME} not found in policy
IMP-10831 - Multiple predicates of the type {PREDICATE_TYPE} are not supported
IMP-10904 - A followed action cannot be set for a rule with 'No Alert' severity
IMP-10905 - One of the predicates has an empty list and cannot be saved.
IMP-10906 - Rule {RULE_NAME} not supported for this policy type
IMP-10907 - Rule {RULE_NAME} does not support parameter: {PARAMETER_NAME}
IMP-10908 - Rule {RULE_NAME} does not support parameters
IMP-10909 - The same rule has been used multiple times: {RULE_NAME}
IMP-10911 - Illegal value for Parameter {PARAMETER_NAME} in Rule {RULE_NAME}
IMP-10912 - Invalid value for parameter {PARAMETER_NAME} in rule {RULE_NAME}, policy {POLICY_NAME} – expecting an integer between {MIN_VALUE} and {MAX_VALUE}

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70365.htm)



