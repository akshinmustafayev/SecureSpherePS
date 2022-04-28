# Edit-SecureSphereWebCorrelationPolicy

## SYNOPSIS
Updates the web correlation policy, indicated by the path parameter: policyName.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereWebCorrelationPolicy -PolicyName <String> -Rules <WebCorrelationPolicyParameteredRule or custom Array or Json> -Exceptions <WebCorrelationPolicyException or custom Array or Json> -DisplayResponsePage -IncludeProfileInformation -ApplyTo <WebCorrelationPolicyApplyTo or custom Array or Json> [<CommonParameters>]
```

## DESCRIPTION
Updates the web correlation policy, indicated by the path parameter: policyName.

## EXAMPLES

### EXAMPLE 1

```powershell
$WebCorrelationPolicyParameteredRule = [WebCorrelationPolicyParameteredRule]::new()
$WebCorrelationPolicyParameteredRule.Name = "Recommended for Blocking for General Applications - Legacy"
$WebCorrelationPolicyParameteredRule.Enabled = $true
$WebCorrelationPolicyParameteredRule.Severity = "informative"
$WebCorrelationPolicyParameteredRule.Action = "none"
$WebCorrelationPolicyParameteredRule.FollowedAction = "Long IP Block"
$WebCorrelationPolicyParameteredRule.Parameters = @{ "values" = @{} }

$WebCorrelationPolicyApplyTo = [WebCorrelationPolicyApplyTo]::new()
$WebCorrelationPolicyApplyTo.SiteName = "some site"
$WebCorrelationPolicyApplyTo.ServerGroupName = "some group"
$WebCorrelationPolicyApplyTo.WebServiceName = "some web service"
$WebCorrelationPolicyApplyTo.WebApplicationName = "some web app"

Edit-SecureSphereWebCorrelationPolicy -PolicyName "some policy" -Rules $WebCorrelationPolicyParameteredRule -DisplayResponsePage $true -IncludeProfileInformation $true -ApplyTo $WebCorrelationPolicyApplyTo -Exceptions [predicates]

Due to lack of official documentation it is hard to specify $Exceptions argument. See https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70809.htm for the examples instead.
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
Type: WebCorrelationPolicyParameteredRule or custom Array or Json
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

### DisplayResponsePage
This parameter specifies the boolean value specifying whether to display response page in alerts.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### IncludeProfileInformation
This parameter specifies the boolean value specifying whether to include profile information.

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
Type: WebCorrelationPolicyApplyTo or custom Array or Json
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

### WebCorrelationPolicyParameteredRule
WebCorrelationPolicyParameteredRule
1. Name - String type. Required. The name of the rule
2. Enabled - Boolean type. Required. Boolean value specifying whether this rule is enabled
3. Severity - String type. Required. The severity of the rule. Expected values: "noAlert", "informative", "low", "medium", "high".
4. Action - String type. Required. Immediate action when this rule is invoked. Expected values: "none", "block"
5. FollowedAction - String type. Required. Followed action after this rule is invoked. 
6. Parameters - Map[String, Object] type. Required. Parameters that are specific to certain rules.

Example:
$WebCorrelationPolicyParameteredRule = [WebCorrelationPolicyParameteredRule]::new()
$WebCorrelationPolicyParameteredRule.Name = "Recommended for Blocking for General Applications - Legacy"
$WebCorrelationPolicyParameteredRule.Enabled = $true
$WebCorrelationPolicyParameteredRule.Severity = "informative"
$WebCorrelationPolicyParameteredRule.Action = "none"
$WebCorrelationPolicyParameteredRule.FollowedAction = "Long IP Block"
$WebCorrelationPolicyParameteredRule.Parameters = @{ "values" = @{} }

### WebCorrelationPolicyParameteredRule
WebCorrelationPolicyException
1. RuleName - String type. Required. The name of the rule to which the exception refers.
2. Comment - String type. Required. User comment for the exception.
3. Predicates - Different predicate types. Required. Predicates for which the exception will apply.

Example:
$WebCorrelationPolicyException = [WebCorrelationPolicyException]::new()
$WebCorrelationPolicyException.RuleName = "Forceful Browsing"
$WebCorrelationPolicyException.Comment = "comment"
$WebCorrelationPolicyException.Predicates = [..any predicate type object\\s..; See predicate types examples]

### WebCorrelationPolicyParameteredRule
WebCorrelationPolicyPredicateHTTTPRequestHeaderValue
1. Type - httpRequestHeaderValue type. Predicate name.
2. Operation - String type. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Name - String type. 
4. Values - String type. List of values to match.

Example:
$WebCorrelationPolicyPredicateHTTTPRequestHeaderValue = [WebCorrelationPolicyPredicateHTTTPRequestHeaderValue]::new()
$WebCorrelationPolicyPredicateHTTTPRequestHeaderValue.Type = [value is unknown due to poor documentation]
$WebCorrelationPolicyPredicateHTTTPRequestHeaderValue.Operation = "atLeastOne"
$WebCorrelationPolicyPredicateHTTTPRequestHeaderValue.Name = "some name"
$WebCorrelationPolicyPredicateHTTTPRequestHeaderValue.Values = "value1"

### WebCorrelationPolicyParameteredRule
WebCorrelationPolicyApplyTo
1. SiteName - String type. Required. The name of the site.
2. ServerGroupName - String type. Required. The name of the server group.
3. WebServiceName - String type. Required. The name of the web service.
4. WebApplicationName - String type. Required. The name of the web application.
5. Operation - String type. Required. Operation to perform on the applyTo value: add/remove. Expected values: "Add", "Remove"

Example:
$WebCorrelationPolicyApplyTo = [WebCorrelationPolicyApplyTo]::new()
$WebCorrelationPolicyApplyTo.SiteName = "some site"
$WebCorrelationPolicyApplyTo.ServerGroupName = "some group"
$WebCorrelationPolicyApplyTo.WebServiceName = "some web service"
$WebCorrelationPolicyApplyTo.WebApplicationName = "some web app"
$WebCorrelationPolicyApplyTo.Operation = "add"

### WebCorrelationPolicyParameteredRule
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10015 - Can not create {ENTITY_NAME} since the body parameter {MISSING_PARAMETER} is missing
IMP-10016 - The “{ILLEGAL_ARGUMENT_NAME}” entered is illegal
IMP-10017 - Service not found
IMP-10032 - The “{ILLEGAL_FIELD_NAME}” value entered is illegal
IMP-10033 - Policy not found
IMP-10119 - Predicate type is not supported: {PREDICATE_TYPE}
IMP-10141 - Value must be greater than or equal to {MIN_VALUE}
IMP-10144 - Value must be less than or equal to {MAX_VALUE}
IMP-10146 - This is a predefined ADC item that cannot be changed
IMP-10811 - Rule {RULE_NAME} not found in policy
IMP-10831 - Multiple predicates of the type {PREDICATE_TYPE} are not supported
IMP-10904 - A followed action cannot be set for a rule with 'No Alert' severity
IMP-10905 - One of the predicates has an empty list and cannot be saved
IMP-10906 - Rule {RULE_NAME} not supported for this policy type
IMP-10907 - Rule {RULE_NAME} does not support parameter: {PARAMETER_NAME}
IMP-10908 - Rule {RULE_NAME} does not support parameters
IMP-10909 - The same rule has been used multiple times: {RULE_NAME}
IMP-10911 - Illegal value for Parameter {PARAMETER_NAME} in Rule {RULE_NAME}
IMP-10912 - Invalid value for parameter {PARAMETER_NAME} in rule {RULE_NAME}, policy {POLICY_NAME} – expecting an integer between {MIN_VALUE} and {MAX_VALUE}

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70809.htm)



