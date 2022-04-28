# New-SecureSphereStreamSignaturesPolicy

## SYNOPSIS
Creates a stream signatures policy, indicated by the path parameter: policyName.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereStreamSignaturesPolicy -PolicyName <String> -Rules <StreamSignaturesPolicyRule type or Array or Json array> -AutoApply -ApplyTo <StreamSignaturesPolicyApplyTo type or Array or Json array> [<CommonParameters>]
```

## DESCRIPTION
Creates a stream signatures policy, indicated by the path parameter: policyName.

## EXAMPLES

### EXAMPLE 1

```powershell
$StreamSignaturesPolicyRule1 = [StreamSignaturesPolicyRule]::new()
$StreamSignaturesPolicyRule1.Name = "Recommended for Blocking for General Applications - Legacy"
$StreamSignaturesPolicyRule1.Enabled = $true
$StreamSignaturesPolicyRule1.FollowedAction = "Long IP Block"

$StreamSignaturesPolicyRule2 = [StreamSignaturesPolicyRule]::new()
$StreamSignaturesPolicyRule2.Name = "Worms and Critical Vulnerabilities for General Applications"
$StreamSignaturesPolicyRule2.Severity = "informative"
$StreamSignaturesPolicyRule2.Action = "none"

$StreamSignaturesPolicyApplyTo = [StreamSignaturesPolicyApplyTo]::new()
$StreamSignaturesPolicyApplyTo.SiteName = "Default Site"
$StreamSignaturesPolicyApplyTo.ServerGroupName  = "My Server Group"

New-SecureSphereStreamSignaturesPolicy -PolicyName "some policy" -Rules @($StreamSignaturesPolicyRule1, $StreamSignaturesPolicyRule2) -AutoApply $true -ApplyTo $StreamSignaturesPolicyApplyTo
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
Type: StreamSignaturesPolicyRule type or Array or Json array
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### AutoApply
This parameter specifies boolean value specifying whether to automatically apply this policy to new server groups.

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
This parameter specifies all server groups to which the policy is applied.

```yaml
Type: StreamSignaturesPolicyApplyTo type or Array or Json array
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
StreamSignaturesPolicyRule
1. Name - String type. The name of the rule
2. Enabled - Boolean type. Boolean value specifying whether this rule is enabled
3. Severity - String type. The severity of the rule. Expected values: "noAlert", "informative", "low", "medium", "high".
4. Action - String type. Immediate action when this rule is invoked. Expected values: "none", "block"
5. FollowedAction - String type. Followed action after this rule is invoked.

Example:
$StreamSignaturesPolicyRule = [StreamSignaturesPolicyRule]::new()
$StreamSignaturesPolicyRule.Name = "Recommended for Blocking for General Applications - Legacy"
$StreamSignaturesPolicyRule.Enabled = $true
$StreamSignaturesPolicyRule.FollowedAction = "Long IP Block"

### Error Codes
StreamSignaturesPolicyApplyTo
1. SiteName - String type. Required. The name of the site.
2. ServerGroupName - String type. Required. The name of the server group

Example:
$StreamSignaturesPolicyApplyTo = [StreamSignaturesPolicyApplyTo]::new()
$StreamSignaturesPolicyApplyTo.SiteName = "Default Site"
$StreamSignaturesPolicyApplyTo.ServerGroupName  = "My Server Group"

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

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66864.htm)



