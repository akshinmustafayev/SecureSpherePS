# Edit-SecureSphereHTTPProtocolSignaturesPolicy

## SYNOPSIS
Creates an http protocol signatures policy, indicated by the path parameter: policyName.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereHTTPProtocolSignaturesPolicy -PolicyName <String> -Rules <HTTPPolicyParameteredRule[] or Custom array or Json> -DisplayResponsePage -ApplyTo <HTTPPolicyApplyTo[] or Custom array or Json> -Exceptions <Predicates or Custom array or Json> [<CommonParameters>]
```

## DESCRIPTION
Creates an http protocol signatures policy, indicated by the path parameter: policyName.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereHTTPProtocolSignaturesPolicy -PolicyName "some policy" ....
See https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66856.htm for example.
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

### Exceptions
This parameter specifies predicates

```yaml
Type: Predicates or Custom array or Json
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

### HTTPSignaturesPolicyRule
HTTPSignaturesPolicyRule
1. Name - String type. Required. The name of the rule.
2. Enabled - Boolean type. Required. Boolean value specifying whether this rule is enabled.
3. Severity - String type. Required. The severity of the rule. Expected values: "noAlert", "informative", "low", "medium", "high".
4. Action - String type. Required. Immediate action when this rule is invoked. Expected values: "none", "block"
5. FollowedAction - String type. Required. Followed action after this rule is invoked.

Example:
$HTTPSignaturesPolicyRule = [HTTPSignaturesPolicyRule]::new()
$HTTPPolicyParameteredRule.Name = "Abnormally Long Header Line"
$HTTPPolicyParameteredRule.Enabled = $true
$HTTPPolicyParameteredRule.Severity = "high"
$HTTPPolicyParameteredRule.Action = "block"
$HTTPPolicyParameteredRule.FollowedAction = "Long IP Block"

### HTTPSignaturesPolicyApplyTo
HTTPSignaturesPolicyApplyTo
1. SiteName - String type. Required. The name of the site.
2. ServerGroupName - String type. Required. The name of the server group.
3. WebServiceName - String type. Required. The name of the web service.
4. Operation - String type. Required. The operation to perform on the ApplyTo entry. Expected values: "add", "remove"

Example:
$HTTPSignaturesPolicyApplyTo = [HTTPSignaturesPolicyApplyTo]::new()
$HTTPPolicyException.SiteName = "some site"
$HTTPPolicyException.ServerGroupName = "some group"
$HTTPPolicyException.WebServiceName = "some service"
$HTTPPolicyException.Operation = "add"

### HTTPSignaturesPredicateAuthenticatedSession
HTTPSignaturesPredicateAuthenticatedSession
1. Type - String type. Required. Predicate name.
2. Value - String type. Required.

Example:
$HTTPSignaturesPredicateAuthenticatedSession = [HTTPSignaturesPredicateAuthenticatedSession]::new()
$HTTPSignaturesPredicateAuthenticatedSession.Type = "some type"
$HTTPSignaturesPredicateAuthenticatedSession.Value = "some value"

### HTTPSignaturesPredicateAuthenticationResult
HTTPSignaturesPredicateAuthenticationResult
1. Type - String type. Required. Predicate name.
2. Value - String type. Required. Match operation for values. Expected values: "failed", "successful"

Example:
$HTTPSignaturesPredicateAuthenticationResult = [HTTPSignaturesPredicateAuthenticationResult]::new()
$HTTPSignaturesPredicateAuthenticationResult.Type = "some type"
$HTTPSignaturesPredicateAuthenticationResult.Value = "successful"

### HTTPSignaturesPredicateAuthenticationURL
HTTPSignaturesPredicateAuthenticationURL
1. Type - String type. Required. Predicate name.
2. Value - String type. Required. Match operation for values. Expected values: "no", "yes", "yesWithLoginFields"

Example:
$HTTPSignaturesPredicateAuthenticationURL = [HTTPSignaturesPredicateAuthenticationURL]::new()
$HTTPSignaturesPredicateAuthenticationURL.Type = "some type"
$HTTPSignaturesPredicateAuthenticationURL.Value  = "yes"


### HTTPSignaturesPredicateServices
HTTPSignaturesPredicateServices
1. Type - httpRequestHeaderValue type. Required. Predicate name.
2. Operation - String type. Required. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Services - Service type. Required.

Example:
$HTTPSignaturesPredicateServices = [HTTPSignaturesPredicateServices]::new()
$HTTPSignaturesPredicateServices.Type = [value is unknown due to poor documentation]
$HTTPSignaturesPredicateServices.Operation = "atLeastOne"
$HTTPSignaturesPredicateServices.Services  = [..list of services..]


### HTTPSignaturesPredicateServicesService
HTTPSignaturesPredicateServicesService
1. SiteName - services. Required. The name of the site in which the service is.
2. ServerGroupName - String type. Required. The name of the server group in which the service is.
3. ServiceName - String type. Required. The name of the service.

Example:
$HTTPSignaturesPredicateServicesService = [HTTPSignaturesPredicateServicesService]::new()
$HTTPSignaturesPredicateServicesService.SiteName = "some site"
$HTTPSignaturesPredicateServicesService.ServerGroupName = "some group"
$HTTPSignaturesPredicateServicesService.ServiceName = "some service"


### Error Codes
HTTPSignaturesPredicateSignatures
1. Type - String type. Required. Predicate name.
2. Operation - String type. Required. Match operation for values. Expected values: "atLeastOne", "excludeAll"
3. Signatures - Signature type. Required. Signatures to match.

Example:
$HTTPPolicyPredicateServicesService = [HTTPPolicyPredicateServicesService]::new()
$HTTPPolicyPredicateServicesService.Type = "some type"
$HTTPPolicyPredicateServicesService.Operation = "atLeastOne"
$HTTPPolicyPredicateServicesService.Signatures = [..list of signatures..]

### Error Codes
HTTPSignaturesPredicateSignaturesSignature
1. Name - String type. Required. Name of the signature
2. IsUserDefined - String type. Required. Specify if signature is User Defined or Predefined

Example:
$HTTPSignaturesPredicateSignaturesSignature = [HTTPSignaturesPredicateSignaturesSignature]::new()
$HTTPSignaturesPredicateSignaturesSignature.Name = "some name"
$HTTPSignaturesPredicateSignaturesSignature.IsUserDefined = $true

### Error Codes
IMP-10005 - An item with this name already exists - please select a different name
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10015 - Can not create {ENTITY_NAME} since the body parameter {MISSING_PARAMETER} is missing
IMP-10017 - Service not found
IMP-10032 - The "{ILLEGAL_FIELD_NAME}" value entered is illegal
IMP-10801 - Dictionary {DICTIONARY_NAME} not found
IMP-10903 - Dictionary {DICTIONARY_NAME} already exists in this policy
IMP-10904 - A followed action cannot be set for a rule with 'No Alert' severity

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66856.htm)



