# Edit-SecureSphereWebErrorPagePolicy

## SYNOPSIS
Update the requested Web Error Page Policy.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereWebErrorPagePolicy -WebErrorPagePolicyName <String> -WebErrorPagePolicyRule <URLRewriteRule or custom Array or Json> [<CommonParameters>]
```

### Parameter Set 2
```
Edit-SecureSphereWebErrorPagePolicy -WebErrorPagePolicyName <String> -WebErrorPagePolicyRules <URLRewriteRule[] or custom Array or Json> [<CommonParameters>]
```

## DESCRIPTION
Update the requested Web Error Page Policy.

## EXAMPLES

### EXAMPLE 1

```powershell
$MathCriteria = @(
    @{
        "type"= "authenticatedSession";
        "value"= "yes";
    }
)

$WebErrorPagePolicyRule = [WebErrorPagePolicyRule]::new()
$WebErrorPagePolicyRule.Name = "Permission denied"
$WebErrorPagePolicyRule.Priority = 1
$WebErrorPagePolicyRule.ErrorPageName = "no-permission page"
$WebErrorPagePolicyRule.MatchCriteria = $MathCriteria
$WebErrorPagePolicyRule.Enabled = $true

Edit-SecureSphereWebErrorPagePolicy -WebErrorPagePolicyName "some policy" -WebErrorPagePolicyRule $WebErrorPagePolicyRule
```

### EXAMPLE 2

```powershell
$MathCriteria1 = @(
    @{
        "type"= "authenticatedSession";
        "value"= "yes";
    }
)

$WebErrorPagePolicyRule1 = [WebErrorPagePolicyRule]::new()
$WebErrorPagePolicyRule1.Name = "Permission denied"
$WebErrorPagePolicyRule1.Priority = 1
$WebErrorPagePolicyRule1.ErrorPageName = "no-permission page"
$WebErrorPagePolicyRule1.MatchCriteria = $MathCriteria1
$WebErrorPagePolicyRule1.Enabled = $true

$MathCriteria2 = @(
    @{
        "type"= "authenticatedSession";
        "value"= "yes";
    }
)

$WebErrorPagePolicyRule2 = [WebErrorPagePolicyRule]::new()
$WebErrorPagePolicyRule2.Name = "Permission denied 2"
$WebErrorPagePolicyRule2.Priority = 1
$WebErrorPagePolicyRule2.ErrorPageName = "no-permission page 2"
$WebErrorPagePolicyRule2.MatchCriteria = $MathCriteria2
$WebErrorPagePolicyRule2.Enabled = $true

[WebErrorPagePolicyRule[]] $WebErrorPagePolicyRuleList = @($WebErrorPagePolicyRule1, $WebErrorPagePolicyRule2)

Edit-SecureSphereWebErrorPagePolicy -WebErrorPagePolicyName "some policy" -WebErrorPagePolicyRules $WebErrorPagePolicyRuleList
```

## PARAMETERS

### WebErrorPagePolicyName
This parameter specifies the policy name.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### WebErrorPagePolicyRule
This parameter specifies the WebErrorPagePolicyRule.

```yaml
Type: URLRewriteRule or custom Array or Json
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### WebErrorPagePolicyRules
This parameter specifies the array of WebErrorPagePolicyRules.

```yaml
Type: URLRewriteRule[] or custom Array or Json
Parameter Sets: Parameter Set 2
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
WebErrorPagePolicyRule contains the following parameters:
1. Name - String value. Specifies the rule name. This parameter is mandatory. 
2. Priority - UInt32 value. Defines the order in which rules are checked. Lowest priority is checked first. Must be unique among rules in the same group. This parameter is mandatory. 
3. ErrorPageName - String value. Name of the error page to display when invoked. Must be an existing Web Error Page.
4. MatchCriteria - String value. This parameter is mandatory. See https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70344.htm for the details
5. Enabled - Boolean value. Enables or disables the rule. This parameter is mandatory.

Example:
$MathCriteria = @(
    @{
        "type"= "authenticatedSession";
        "value"= "yes";
    }
)

$WebErrorPagePolicyRule = [WebErrorPagePolicyRule]::new()
$WebErrorPagePolicyRule.Name = "Permission denied"
$WebErrorPagePolicyRule.Priority = 1
$WebErrorPagePolicyRule.ErrorPageName = "no-permission page"
$WebErrorPagePolicyRule.MatchCriteria = $MathCriteria
$WebErrorPagePolicyRule.Enabled = $true

### Error Codes
IMP-10005 - An item with this name already exists - please select a different name
IMP-10119 - Predicate type is not supported: {predicateName}
IMP-10351 - Required field name cannot be left blank OR Required field 'errorPageName' cannot be left blank
IMP-10681 - Please specify the priority for this rule
IMP-10682 - Two rules or more have the same priority.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70348.htm)



