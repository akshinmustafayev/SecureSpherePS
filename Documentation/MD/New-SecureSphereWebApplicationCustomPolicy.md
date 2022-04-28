# New-SecureSphereWebApplicationCustomPolicy

## SYNOPSIS
Create a Web Application Custom Policy indicated by the path parameter policyName.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereWebApplicationCustomPolicy -PolicyName <String> [-Enabled] [-Severity <String>] -Action <String> [-FollowedAction <String>] [-OneAlertPerSession] [-DisplayResponsePage] [-ApplyTo [<WebApplicationCustomPolicyApplyTo or custom Array or Json>]] [-MatchCriteria [<Custom Array or Json>]] [<CommonParameters>]
```

## DESCRIPTION
Create a Web Application Custom Policy indicated by the path parameter policyName.

## EXAMPLES

### EXAMPLE 1

```powershell
$WebApplicationCustomPolicyApplyTo = [WebApplicationCustomPolicyApplyTo]::new()
$WebApplicationCustomPolicyApplyTo.SiteName = "ProductionSite"
$WebApplicationCustomPolicyApplyTo.ServerGroupName  = "Orders"
$WebApplicationCustomPolicyApplyTo.ServerGroupName  = "online"
$WebApplicationCustomPolicyApplyTo.ServerGroupName  = "my apps"

New-SecureSphereWebApplicationCustomPolicy -Enabled $false OneAlertPerSession $true -DisplayResponsePage $false -Severity "low" -Action "none" -FollowedAction "Long IP Block" -MatchCriteria $MatchCriteria -ApplyTo $WebApplicationCustomPolicyApplyTo

Due to lack of official documentation it is hard to specify $MatchCriteria argument. See https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61871.htm for the examples instead. You can specify array to this value.
I recommend to use Get-SecureSphereWebApplicationCustomPolicy cmdlet to retrieve MatchCriteria parameter and use it as an example in your code.
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

### Enabled
This parameter specifies if policy is enabled.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: true
Pipeline Input: False
```

### Severity
This parameter specifies alert Severity

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
This parameter specifies the policy action.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
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
This parameter indicates whether to allow only one alert to be created for every web session.

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
This parameter indicates whether to show response page in alerts

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
This parameter specifies the list of applications to which apply policy

```yaml
Type: WebApplicationCustomPolicyApplyTo or custom Array or Json
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### MatchCriteria
This parameter specifies the list of match criteria to add.

```yaml
Type: Custom Array or Json
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

### WebApplicationCustomPolicyApplyTo
WebApplicationCustomPolicyApplyTo
1. siteName - String type. Required. The name of the site.
2. serverGroupName - String type. Required. The name of the server group
3. webServiceName - String type. Required.Name of the web service
4. webApplicationName - String type. Required. Name of the web application

Example:
$WebApplicationCustomPolicyApplyTo = [WebApplicationCustomPolicyApplyTo]::new()
$WebApplicationCustomPolicyApplyTo.SiteName = "ProductionSite"
$WebApplicationCustomPolicyApplyTo.ServerGroupName = "Orders"
$WebApplicationCustomPolicyApplyTo.WebServiceName  = "online"
$WebApplicationCustomPolicyApplyTo.WebApplicationName  = "my apps"

### WebApplicationCustomPolicyApplyTo
IMP-10005 - An item with this name already exists - please select a different name
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10010 - Invalid IP address. Please enter a valid IP address, then try again
IMP-10014 - Application not found
IMP-10015 - Can not create {ENTITY_NAME} since the body parameter {MISSING_PARAMETER} is missing
IMP-10016 - The "value" entered is illegal. Note: Refers to all body parameters, operation, direction
IMP-10017 - Service not found
IMP-10023 - One of the parameters [searchInLookupDataset, searchInUserValues] is mandatory. Note: Refers to the Data Set Attribute Lookup and Enrichment Data match criteria. -OR- One of the parameters [ipGroups, userDefined] is mandatory. Note: Refers to the Source IP Addresses and Proxy IP Addresses match criteria.
IMP-10094 - Dataset not found.
IMP-10095 - Column named "value" does not exist in the dataset
IMP-10601 - IP group name not found
IMP-10701 - Action Set not found
IMP-10801 - Dictionary {DICTIONARY_NAME} not found
IMP-10832 - The 'Within' value must not be less than 5 and a multiple of 5

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61871.htm)



