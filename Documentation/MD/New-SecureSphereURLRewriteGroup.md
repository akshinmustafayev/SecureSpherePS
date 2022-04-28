# New-SecureSphereURLRewriteGroup

## SYNOPSIS
Create a URL Rewrite Group.

## SYNTAX

### Parameter Set 1
```
New-SecureSphereURLRewriteGroup -UrlRewriteGroupName <String> -URLRewriteRule <URLRewriteRule or custom Array or Json> [<CommonParameters>]
```

### Parameter Set 2 (Default)
```
New-SecureSphereURLRewriteGroup -UrlRewriteGroupName <String> -URLRewriteRules <URLRewriteRule[] or custom Array or Json> [<CommonParameters>]
```

## DESCRIPTION
Create a URL Rewrite Group.

## EXAMPLES

### EXAMPLE 1

```powershell
$MathCriteria = @(
    @{
        "type"= "authenticatedSession";
        "value"= "no";
    },
    @{
        "values"= @(
            "druid",
            "mage"
        );
        "type"= "httpRequestUrl";
        "operation"= "atLeastOne";
        "match"= "prefix";
    }
)

$URLRewriteRule = [URLRewriteRule]::new()
$URLRewriteRule.Name = "bingToGoogle"
$URLRewriteRule.Priority = 1
$URLRewriteRule.MatchCriteria = $MathCriteria
$URLRewriteRule.HostToFind = "bing"
$URLRewriteRule.HostToReplace = "google"
$URLRewriteRule.PathToFind = "search"
$URLRewriteRule.PathToReplace = "query"
$URLRewriteRule.ApplyTo = "Request"
$URLRewriteRule.Redirect = "NoRedirect"
$URLRewriteRule.Enabled = $true

New-SecureSphereURLRewriteGroup -UrlRewriteGroupName "some_group" -URLRewriteRule $URLRewriteRule
```

### EXAMPLE 2

```powershell
$MathCriteria1 = @(
    @{
        "type"= "authenticatedSession";
        "value"= "no";
    },
    @{
        "values"= @(
            "druid",
            "mage"
        );
        "type"= "httpRequestUrl";
        "operation"= "atLeastOne";
        "match"= "prefix";
    }
)

$URLRewriteRule1 = [URLRewriteRule]::new()
$URLRewriteRule1.Name = "bingToGoogle"
$URLRewriteRule1.Priority = 1
$URLRewriteRule1.MatchCriteria = $MathCriteria1
$URLRewriteRule1.HostToFind = "bing"
$URLRewriteRule1.HostToReplace = "google"
$URLRewriteRule1.PathToFind = "search"
$URLRewriteRule1.PathToReplace = "query"
$URLRewriteRule1.ApplyTo = "Request"
$URLRewriteRule1.Redirect = "NoRedirect"
$URLRewriteRule1.Enabled = $true

$MathCriteria2 = @(
    @{
        "type"= "authenticatedSession";
        "value"= "no";
    },
    @{
        "values"= @(
            "druid",
            "mage"
        );
        "type"= "httpRequestUrl";
        "operation"= "atLeastOne";
        "match"= "prefix";
    }
)

$URLRewriteRule2 = [URLRewriteRule]::new()
$URLRewriteRule2.Name = "bingToFacebook"
$URLRewriteRule2.Priority = 1
$URLRewriteRule2.MatchCriteria = $MathCriteria2
$URLRewriteRule2.HostToFind = "bing"
$URLRewriteRule2.HostToReplace = "facebook"
$URLRewriteRule2.PathToFind = "search"
$URLRewriteRule2.PathToReplace = "query"
$URLRewriteRule2.ApplyTo = "Request"
$URLRewriteRule2.Redirect = "NoRedirect"
$URLRewriteRule2.Enabled = $true

[URLRewriteRule[]] $URLRewriteRuleList = @($URLRewriteRule1, $URLRewriteRule2)

New-SecureSphereURLRewriteGroup -UrlRewriteGroupName "some_group" -URLRewriteRules $URLRewriteRuleList
```

## PARAMETERS

### UrlRewriteGroupName
This parameter specifies the name of the group.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### URLRewriteRule
This parameter specifies the URLRewriteRule.

```yaml
Type: URLRewriteRule or custom Array or Json
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### URLRewriteRules
This parameter specifies the array of URLRewriteRules.

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
URLRewriteRule contains the following parameters:
1. Name - String value. Group name. This parameter is mandatory. 
2. Priority - UInt32 value. Must be unique among rules in the same group. This parameter is mandatory. 
3. HostToFind - String value. Defines the rewriting of the URL host and path, respectively.
4. HostToReplace - String value. This parameter is not mandatory. 
5. PathToFind - String value. This parameter is not mandatory. 
6. PathToReplace - String value. This parameter is not mandatory. 
7. MatchCriteria - String value. This parameter is mandatory. See https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69940.htm for the details
8. ApplyTo  - String value. May accept only these (2) parameters: "Request" ; "Response" . This parameter is mandatory. 
9. Redirect - String value. May accept only these (4) parameters: "Original" ; "HTTP" ; "HTTPS" ; "NoRedirect". This parameter is mandatory. 
10. Enabled - Boolean value. Enables or disables the rule. This parameter is mandatory.

Example:
$MathCriteria = @(
    @{
        "type"= "authenticatedSession";
        "value"= "no";
    },
    @{
        "values"= @(
            "druid",
            "mage"
        );
        "type"= "httpRequestUrl";
        "operation"= "atLeastOne";
        "match"= "prefix";
    }
)

$URLRewriteRule = [URLRewriteRule]::new()
$URLRewriteRule.Name = "bingToGoogle"
$URLRewriteRule.Priority = 1
$URLRewriteRule.MatchCriteria = $MathCriteria
$URLRewriteRule.HostToFind = "bing"
$URLRewriteRule.HostToReplace = "google"
$URLRewriteRule.PathToFind = "search"
$URLRewriteRule.PathToReplace = "query"
$URLRewriteRule.ApplyTo = "Request"
$URLRewriteRule.Redirect = "NoRedirect"
$URLRewriteRule.Enabled = $true

### Error Codes
IMP-10005 - An item with this name already exists - please select a different name
IMP-10149 - Field "redirect" must be one of "Original, HTTP, HTTPS, or NoRedirect" OR Field "applyTo" must be one of "Request, Response"
IMP-10350 - Invalid regular expression: {fieldName}
IMP-10681 - Please specify the priority for this rule
IMP-10682 - Two rules or more have the same priority.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69940.htm)



