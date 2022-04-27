# Edit-SecureSphereWebApplicationCustomPolicy

## SYNOPSIS
Update a Web Application Custom Policy indicated by the path parameter policyName.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereWebApplicationCustomPolicy -PolicyName <String> [-Enabled] [-Severity <String>] -Action <String> [-FollowedAction <String>] [-OneAlertPerSession] [-DisplayResponsePage] [-ApplyTo [<WebApplicationCustomPolicyApplyTo or custom Array or Json>]] [-MatchCriteria [<Custom Array or Json>]] [-SendToCD] [<CommonParameters>]
```

## DESCRIPTION
Update a Web Application Custom Policy indicated by the path parameter policyName.

## EXAMPLES

### EXAMPLE 1

```powershell
$WebApplicationCustomPolicyApplyTo = [WebApplicationCustomPolicyApplyTo]::new()
$WebApplicationCustomPolicyApplyTo.SiteName = "ProductionSite"
$WebApplicationCustomPolicyApplyTo.ServerGroupName = "Orders"
$WebApplicationCustomPolicyApplyTo.WebServiceName  = "online"
$WebApplicationCustomPolicyApplyTo.WebApplicationName  = "my apps"
$WebApplicationCustomPolicyApplyTo.Operation = "add"

New-SecureSphereWebApplicationCustomPolicy -Enabled $false OneAlertPerSession $true -DisplayResponsePage $false -Severity "low" -Action "none" -FollowedAction "Long IP Block" -MatchCriteria $MatchCriteria -ApplyTo $WebApplicationCustomPolicyApplyTo

Due to lack of official documentation it is hard to specify $MatchCriteria argument. See https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61872.htm for the examples instead. You can specify array to this value.
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

### SendToCD
This parameter indicates whether to allow to send the alert information to Community Defense. Applicable for only some predefined policies.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: false
Pipeline Input: False
```

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

### WebApplicationCustomPolicyApplyTo
WebApplicationCustomPolicyApplyTo
1. SiteName - String type. Required. The name of the site.
2. ServerGroupName - String type. Required. The name of the server group
3. WebServiceName - String type. Required.Name of the web service
4. WebApplicationName - String type. Required. Name of the web application
5. Operation - String type. Required. Expected values: "add", "remove"

Example:
$WebApplicationCustomPolicyApplyTo = [WebApplicationCustomPolicyApplyTo]::new()
$WebApplicationCustomPolicyApplyTo.SiteName = "ProductionSite"
$WebApplicationCustomPolicyApplyTo.ServerGroupName = "Orders"
$WebApplicationCustomPolicyApplyTo.WebServiceName  = "online"
$WebApplicationCustomPolicyApplyTo.WebApplicationName  = "my apps"
$WebApplicationCustomPolicyApplyTo.Operation = "add"

### WebApplicationCustomPolicyApplyTo
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10010 - Invalid IP address. Please enter a valid IP address, then try again
IMP-10014 - Application not found
IMP-10015 - Can not create {ENTITY_NAME} since the body parameter {MISSING_PARAMETER} is missing
IMP-10016 - The "value" entered is illegal. Refers to all body parameters, operations and directions. -OR- The "value" entered is illegal. Note: Refers to all parameters that have no specific error.
IMP-10017 - Service not found
IMP-10023 - One of the parameters [searchInLookupDataset, searchInUserValues] is mandatory. Note: Refers to the Data Set Attribute Lookup and Enrichment Data match criteria. -OR- One of the parameters [ipGroups, userDefined] is mandatory. Note: Refers to the Source IP Addresses and Proxy IP Addresses match criteria.
IMP-10033 - Policy not found
IMP-10601 - IP group name not found
IMP-10701 - Action Set not found
IMP-10801 - Dictionary {DICTIONARY_NAME} not found
IMP-10831 - Match criterion cannot be applied more than once
IMP-10911 - Policy data cannot be sent to Community Defense

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61872.htm)



