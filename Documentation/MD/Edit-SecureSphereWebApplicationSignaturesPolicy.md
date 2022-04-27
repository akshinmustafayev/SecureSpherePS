# Edit-SecureSphereWebApplicationSignaturesPolicy

## SYNOPSIS
Updates a web application signatures policy, indicated by the path parameter: policyName.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereWebApplicationSignaturesPolicy -PolicyName <String> -Rules <WebApplicationSignaturesPolicyRule or custom Array or Json> -DisplayResponsePage -ApplyTo <WebApplicationSignaturesPolicyApplyTo or custom Array or Json> -Exceptions <Predicates or custom Array or Json> [<CommonParameters>]
```

## DESCRIPTION
Updates a web application signatures policy, indicated by the path parameter: policyName.

## EXAMPLES

### EXAMPLE 1

```powershell
$WebApplicationSignaturesPolicyRule = [WebApplicationSignaturesPolicyRule]::new()
$WebApplicationSignaturesPolicyRule.Name = "Recommended for Blocking for General Applications - Legacy"
$WebApplicationSignaturesPolicyRule.Enabled = $true
$WebApplicationSignaturesPolicyRule.Severity = "informative"
$WebApplicationSignaturesPolicyRule.Action = "none"

$WebApplicationSignaturesPolicyApplyTo = [WebApplicationSignaturesPolicyApplyTo]::new()
$WebApplicationSignaturesPolicyApplyTo.SiteName = "some site"
$WebApplicationSignaturesPolicyApplyTo.ServerGroupName = "some group"
$WebApplicationSignaturesPolicyApplyTo.WebServiceName = "some web service"
$WebApplicationSignaturesPolicyApplyTo.WebApplicationName = "some web app"

Edit-SecureSphereWebApplicationSignaturesPolicy -PolicyName "some policy" -Rules $WebApplicationSignaturesPolicyRule -DisplayResponsePage $true -ApplyTo $WebApplicationSignaturesPolicyApplyTo -Exceptions [predicates]

Due to lack of official documentation it is hard to specify $Exceptions argument. See https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66869.htm for the examples instead.
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
Type: WebApplicationSignaturesPolicyRule or custom Array or Json
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

### ApplyTo
This parameter specifies all web applications to which the policy is applied.

```yaml
Type: WebApplicationSignaturesPolicyApplyTo or custom Array or Json
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
Type: Predicates or custom Array or Json
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

WebApplicationSignaturesPolicyRule
1. Name - String type. The name of the dictionary.
2. Enabled - Boolean type. Boolean value specifying whether this rule is enabled.
3. Severity - String type. The severity of the rule. Expected values: "noAlert", "informative", "low", "medium", "high".
4. Action - String type. Immediate action when this rule is invoked. Expected values: "none", "block"
5. FollowedAction - String type. Followed action after this rule is invoked.

Example:
$WebApplicationSignaturesPolicyRule = [WebApplicationSignaturesPolicyRule]::new()
$WebApplicationSignaturesPolicyRule.Name = "Recommended for Blocking for General Applications - Legacy"
$WebApplicationSignaturesPolicyRule.Enabled = $true
$WebApplicationSignaturesPolicyRule.Severity = "informative"
$WebApplicationSignaturesPolicyRule.Action = "none"

### WebApplicationSignaturesPolicyApplyTo
WebApplicationSignaturesPolicyApplyTo
1. SiteName - String type. Required. The name of the site.
2. ServerGroupName - String type. Required. The name of the server group.
3. WebServiceName - String type. Required. The name of the web service.
4. WebApplicationName - String type. Required. The name of the web application.
5. Operation - String type. Required. The operation to perform on the ApplyTo entry. Expected values: "add", "remove"

Example:
$WebApplicationSignaturesPolicyApplyTo = [WebApplicationSignaturesPolicyApplyTo]::new()
$WebApplicationSignaturesPolicyApplyTo.SiteName = "some site"
$WebApplicationSignaturesPolicyApplyTo.ServerGroupName = "some group"
$WebApplicationSignaturesPolicyApplyTo.WebServiceName = "some web service"
$WebApplicationSignaturesPolicyApplyTo.WebApplicationName = "some web app"
$WebApplicationSignaturesPolicyApplyTo.Operation = "add"

### WebApplicationSignaturesPolicyApplyTo
WebApplicationSignaturesPredicateAuthenticatedSession
1. Type - String type. Required. Predicate name.
2. Value - String type. Required.

Example:
$WebApplicationSignaturesPredicateAuthenticatedSession = [WebApplicationSignaturesPredicateAuthenticatedSession]::new()
$WebApplicationSignaturesPredicateAuthenticatedSession.type = "some type"
$WebApplicationSignaturesPredicateAuthenticatedSession.value = "some value"

### WebApplicationSignaturesPolicyApplyTo
WebApplicationSignaturesPredicateAuthenticationResult
1. Type - String type. Required. Predicate name.
2. Value - String type. Required. Match operation for values. Expected values: "failed", "successful"

Example:
$WebApplicationSignaturesPredicateAuthenticationResult = [WebApplicationSignaturesPredicateAuthenticationResult]::new()
$WebApplicationSignaturesPredicateAuthenticationResult.Type = "some type"
$WebApplicationSignaturesPredicateAuthenticationResult.Value  = "successful"

### WebApplicationSignaturesPolicyApplyTo
WebApplicationSignaturesPredicateAuthenticationURL
1. Type - String type. Required. Predicate name.
2. Value - String type. Required. Match operation for values. Expected values: "no", "yes", "yesWithLoginFields"

Example:
$WebApplicationSignaturesPredicateAuthenticationURL = [WebApplicationSignaturesPredicateAuthenticationURL]::new()
$WebApplicationSignaturesPredicateAuthenticationURL.Type = "some type"
$WebApplicationSignaturesPredicateAuthenticationURL.Value  = "yes"


### WebApplicationSignaturesPolicyApplyTo
WebApplicationSignaturesPredicateServices
1. Type - httpRequestHeaderValue type. Required. Predicate name.
2. Operation - String type. Required. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Services - Service type. Required.

Example:
$WebApplicationSignaturesPredicateServices = [WebApplicationSignaturesPredicateServices]::new()
$WebApplicationSignaturesPredicateServices.Type = [value is unknown due to poor documentation]
$WebApplicationSignaturesPredicateServices.Operation = "atLeastOne"
$WebApplicationSignaturesPredicateServices.Services  = [..list of services..]


### WebApplicationSignaturesPolicyApplyTo
WebApplicationSignaturesPredicateServicesService
1. SiteName - services. Required. The name of the site in which the service is.
2. ServerGroupName - String type. Required. The name of the server group in which the service is.
3. ServiceName - String type. Required. The name of the service.

Example:
$WebApplicationSignaturesPredicateServicesService = [WebApplicationSignaturesPredicateServicesService]::new()
$WebApplicationSignaturesPredicateServicesService.SiteName = "some site"
$WebApplicationSignaturesPredicateServicesService.ServerGroupName = "some group"
$WebApplicationSignaturesPredicateServicesService.ServiceName = "some service"


### WebApplicationSignaturesPolicyApplyTo
WebApplicationSignaturesPredicateSignatures
1. Type - String type. Required. Predicate name.
2. Operation - String type. Required. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Signatures - Signature type. Required. Signatures to match.

Example:
$WebApplicationSignaturesPredicateSignatures = [WebApplicationSignaturesPredicateSignatures]::new()
$WebApplicationSignaturesPredicateSignatures.Type = "some type"
$WebApplicationSignaturesPredicateSignatures.Operation = "atLeastOne"
$WebApplicationSignaturesPredicateSignatures.Signatures = [..list of signatures..]

### Error Codes
WebApplicationSignaturesPredicateSignaturesSignature
1. Name - String type. Required. Name of the signature.
2. IsUserDefined - String type. Required. Specify if signature is User Defined or Predefined.

Example:
$WebApplicationSignaturesPredicateSignaturesSignature = [WebApplicationSignaturesPredicateSignaturesSignature]::new()
$WebApplicationSignaturesPredicateSignaturesSignature.Name = "some name"
$WebApplicationSignaturesPredicateSignaturesSignature.IsUserDefined = $true

### Error Codes
IMP-10005 - An item with this name already exists - please select a different name
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10014 - Application not found
IMP-10015 - Can not create {ENTITY_NAME} since the body parameter {MISSING_PARAMETER} is missing
IMP-10017 - Service not found
IMP-10032 - The "{ILLEGAL_FIELD_NAME}" value entered is illegal
IMP-10801 - Dictionary {DICTIONARY_NAME} not found
IMP-10903 - Dictionary {DICTIONARY_NAME} already exists in this policy
IMP-10904 - A followed action cannot be set for a rule with 'No Alert' severity

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66869.htm)



