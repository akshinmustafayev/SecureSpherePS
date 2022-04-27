# Edit-SecureSphereWebProfilePolicy

## SYNOPSIS
Updates a web profile policy, indicated by the path parameter: policyName.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereWebProfilePolicy -PolicyName <String> -Rules <WebProfilePolicyParameteredRule or custom Array or Json> -Exceptions <WebCorrelationPolicyException or custom Array or Json> -ApuConfig <WebProfilePolicyAPURuleConfig or custom Array or Json> -DisableLearning -DisplayResponsePage -ApplyTo <WebProfilePolicyApplyTo or custom Array or Json> [<CommonParameters>]
```

## DESCRIPTION
Updates a web profile policy, indicated by the path parameter: policyName.

## EXAMPLES

### EXAMPLE 1

```powershell
$WebProfilePolicyParameteredRule = [WebProfilePolicyParameteredRule]::new()
$WebProfilePolicyParameteredRule.Name = "Cookie Injection"
$WebProfilePolicyParameteredRule.Enabled = $true
$WebProfilePolicyParameteredRule.Severity = "high"
$WebProfilePolicyParameteredRule.Action = "none"
$WebProfilePolicyParameteredRule.FollowedAction = "Short IP Block"

$WebProfilePolicyAPURuleConfig = [WebProfilePolicyAPURuleConfig]::new()
$WebProfilePolicyAPURuleConfig.Enabled = $false
$WebProfilePolicyAPURuleConfig.Hours = 10
$WebProfilePolicyAPURuleConfig.Occurrences = 50
$WebProfilePolicyAPURuleConfig.Sources = 50

$WebProfilePolicyApplyTo = [WebProfilePolicyApplyTo]::new()
$WebProfilePolicyApplyTo.SiteName = "some site"
$WebProfilePolicyApplyTo.ServerGroupName = "some group"
$WebProfilePolicyApplyTo.WebServiceName = "some web service"
$WebProfilePolicyApplyTo.WebApplicationName = "some web app"

Edit-SecureSphereWebProfilePolicy -PolicyName "some policy" -Rules $WebProfilePolicyParameteredRule -DisableLearning $true -DisplayResponsePage $true -ApplyTo $WebProfilePolicyApplyTo -ApuConfig $WebProfilePolicyAPURuleConfig -Exceptions [predicates]

Due to lack of official documentation it is hard to specify $Exceptions argument. See https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69911.htm for the examples instead.
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
This parameter specifies all applied rules.

```yaml
Type: WebProfilePolicyParameteredRule or custom Array or Json
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Exceptions
This parameter specifies exceptions to this policy.

```yaml
Type: WebCorrelationPolicyException or custom Array or Json
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ApuConfig
This parameter specifies auto profile update configuration per rule.

```yaml
Type: WebProfilePolicyAPURuleConfig or custom Array or Json
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### DisableLearning
This parameter specifies the boolean value specifying whether to disable learning.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### DisplayResponsePage
This parameter specifies the boolean value specifying whether to display response page.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ApplyTo
This parameter specifies sites or Server groups or Services or Applications to apply this policy to.

```yaml
Type: WebProfilePolicyApplyTo or custom Array or Json
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

WebProfilePolicyParameteredRule
1. Name - String type. Required. The name of the rule
2. Enabled - Boolean type. Required. Boolean value specifying whether this rule is enabled
3. Severity - String type. Required. The severity of the rule. Expected values: "noAlert", "informative", "low", "medium", "high".
4. Action - String type. Required. Immediate action when this rule is invoked. Expected values: "none", "block"
5. FollowedAction - String type. Required. Followed action after this rule is invoked. 
6. Parameters - Map[String, Object] type. Required. Parameters that are specific to certain rules.

Example:
$WebProfilePolicyParameteredRule = [WebProfilePolicyParameteredRule]::new()
$WebProfilePolicyParameteredRule.Name = "Cookie Injection"
$WebProfilePolicyParameteredRule.Enabled = $true
$WebProfilePolicyParameteredRule.Severity = "high"
$WebProfilePolicyParameteredRule.Action = "none"
$WebProfilePolicyParameteredRule.FollowedAction = "Short IP Block"

WebProfilePolicyException
1. RuleName - String type. Required. The name of the rule to which the exception refers.
2. Comment - String type. Required. User comment for the exception.
3. Predicates - Different predicate types. Required. Predicates for which the exception will apply.

Example:
$WebProfilePolicyException = [WebProfilePolicyException]::new()
$WebProfilePolicyException.RuleName = "Forceful Browsing"
$WebProfilePolicyException.Comment = "comment"
$WebProfilePolicyException.Predicates = [..any predicate type object\\s..; See predicate types examples]

WebProfilePolicyAPURuleConfig
1. Enabled - Boolean type. Boolean value specifying whether this configuration is enabled
2. Hours - UInt32 type. SecureSphere will take action that is specific to the rule if the rule was invoked from at least S different sources and was seen this way at least N times altogether over at least H different hours.
3. Occurrences - UInt32 type. SecureSphere will take action that is specific to the rule if the rule was invoked from at least S different sources and was seen this way at least N times altogether over at least H different hours.
4. Sources - UInt32 type. SecureSphere will take action that is specific to the rule if the rule was invoked from at least S different sources and was seen this way at least N times altogether over at least H different hours.

Example:
$WebProfilePolicyAPURuleConfig = [WebProfilePolicyAPURuleConfig]::new()
$WebProfilePolicyAPURuleConfig.Enabled = $false
$WebProfilePolicyAPURuleConfig.Hours = 10
$WebProfilePolicyAPURuleConfig.Occurrences = 50
$WebProfilePolicyAPURuleConfig.Sources = 50





WebProfilePolicyApplyTo
1. SiteName - String type. Required. The name of the site.
2. ServerGroupName - String type. Required. The name of the server group.
3. WebServiceName - String type. Required. The name of the web service.
4. WebApplicationName - String type. Required. The name of the web application.

Example:
$WebProfilePolicyApplyTo = [WebProfilePolicyApplyTo]::new()
$WebProfilePolicyApplyTo.SiteName = "some site"
$WebProfilePolicyApplyTo.ServerGroupName = "some group"
$WebProfilePolicyApplyTo.WebServiceName = "some web service"
$WebProfilePolicyApplyTo.WebApplicationName = "some web app"

WebProfilePolicyPredicateHTTPVersion
1. Type - httpRequestHeaderValue type. Predicate name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Values - String type. List of values to match.

Example:
$WebProfilePolicyPredicateHTTPVersion = [WebProfilePolicyPredicateHTTPVersion]::new()
$WebProfilePolicyPredicateHTTPVersion.Type = [value is unknown due to poor documentation]
$WebProfilePolicyPredicateHTTPVersion.Operation = "atLeastOne"
$WebProfilePolicyPredicateHTTPVersion.Values = "value1"


IMP-10005 - An item with this name already exists - please select a different name
IMP-10006Site not found
IMP-10008 - Server Group not found
IMP-10014 - Application not found
IMP-10015 - Can not create {ENTITY_NAME} since the body parameter {MISSING_PARAMETER} is missing
IMP-10016 - The “{ILLEGAL_ARGUMENT_NAME}” entered is illegal
IMP-10017 - Service not found
IMP-10032 - The “{ILLEGAL_FIELD_NAME}” value entered is illegal
IMP-10119 - Predicate type is not supported: {PREDICATE_TYPE}
IMP-10811 - Rule {RULE_NAME} not found in policy
IMP-10831 - Multiple predicates of the type {PREDICATE_TYPE} are not supported
IMP-10904 - A followed action cannot be set for a rule with 'No Alert' severity
IMP-10905 - One of the predicates has an empty list and cannot be saved
IMP-10906 - Rule {RULE_NAME} not supported for this policy type
IMP-10907 - Rule {RULE_NAME} does not support parameter: {PARAMETER_NAME}
IMP-10908 - Rule {RULE_NAME} does not support parameters
IMP-10909 - The same rule has been used multiple times: {RULE_NAME}
IMP-10910 - Rule {RULE_NAME} does not support Automatic Profile Update configuration
IMP-10911 - Illegal value for Parameter {PARAMETER_NAME} in Rule {RULE_NAME}

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69911.htm)



