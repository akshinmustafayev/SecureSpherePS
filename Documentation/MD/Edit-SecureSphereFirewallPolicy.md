# Edit-SecureSphereFirewallPolicy

## SYNOPSIS
Update a Firewall Policy indicated by the path parameter policyName.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereFirewallPolicy -PolicyName <String> [-Enabled] [-Severity <String>] [-Action <String>] [-FollowedAction <String>] [-AllowAppServicePorts] [-EstablishedConnectionsBlock] [-InboundOperation <String>] [-OutboundOperation <String>] [-Rules <FirewallPolicyRule>] [-SendToCd <String>] [-ApplyTo <FirewallPolicyApplyTo>] [<CommonParameters>]
```

## DESCRIPTION
Update a Firewall Policy indicated by the path parameter policyName.

## EXAMPLES

### EXAMPLE 1

```powershell
$FirewallPolicyRule = [FirewallPolicyRule]::new()
$FirewallPolicyRule.Operation = "Add"
$FirewallPolicyRule.Direction = "Inbound"
$FirewallPolicyRule.Protocol = "any-tcp"
$FirewallPolicyRule.IPGroup = "All Search Engines"

$ApplyTo = [FirewallPolicyApplyTo]::new()
$ApplyTo.SiteName = "Production Site"
$ApplyTo.ServerGroupName = "Orders"
$ApplyTo.Operation  = "Add"

Edit-SecureSphereFirewallPolicy -PolicyName "some policy" -Enabled $false -FollowedAction "Long IP Block" -Rules $FirewallPolicyRule -ApplyTo $ApplyTo
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
This parameter specifies the name of the policy.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: false
Pipeline Input: False
```

### Severity
This parameter specifies alert severity.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: High
Accepted Values: High
                 Medium
                 Low
                 Informative
                 NoAlert
Pipeline Input: False
```

### Action
This parameter specifies the policy action.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: Block
Accepted Values: Block
                 None
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

### AllowAppServicePorts
This parameter determines if always allow applicative service ports.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### EstablishedConnectionsBlock
This parameter determines if already established connections should be blocked.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### InboundOperation
This parameter specifies Inbound rules operation.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: Block
Accepted Values: Permit
                 Block
Pipeline Input: False
```

### OutboundOperation
This parameter specifies Outbound rules operation.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: Block
Accepted Values: Permit
                 Block
Pipeline Input: False
```

### Rules
This parameter specifies the list of FirewallPolicyRule type objects.

```yaml
Type: FirewallPolicyRule
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### SendToCd
This parameter specifies if to send to Community Defense.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ApplyTo
This parameter specifies the list of FirewallPolicyApplyTo type objects. Apply/Remove to Server Groups.

```yaml
Type: FirewallPolicyApplyTo
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

### Error Codes
FirewallPolicyRule
1. Operation - String type. Required. Entry operation. Expected values: "Add", "Remove", "Update"
2. Direction - String type. Required. Traffic direction of the rule. Expected values: "Inbound", "Outbound"
3. Protocol - String type. Required. Name of the protocol in the global port groups.
4. IpGroup - String type. Optional. Name of the IP Group. When missing for operation: add, update – default IP group is used ("any").

Example:
$FirewallPolicyRule = [FirewallPolicyRule]::new()
$FirewallPolicyRule.Operation = "Add"
$FirewallPolicyRule.Direction = "Inbound"
$FirewallPolicyRule.Protocol = "any-tcp"
$FirewallPolicyRule.IPGroup = "All Search Engines"


### Error Codes
FirewallPolicyApplyTo
1. SiteName - String type. Required. Name of the site to which the server group belongs.
2. ServerGroupName - String type. Required. Name of the server group to apply/remove.
3. Operation - String type. Required. Expected values: "Add", "Remove".

Example:
$ApplyTo = [FirewallPolicyApplyTo]::new()
$ApplyTo.SiteName = "Production Site"
$ApplyTo.ServerGroupName = "Orders"
$ApplyTo.Operation  = "Add"

### Error Codes
IMP-10005 - An item with this name already exists - please select a different name
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10015 - Can not create {ENTITY_NAME} since the body parameter {MISSING_PARAMETER} is missing
IMP-10016 - The "value" entered is illegal
IMP-10033 - Policy not found
IMP-10601 - IP group name not found
IMP-10701 - Action Set not found
IMP-10702 - Protocol not found
IMP-10811 - Rule {RULE_NAME} not found in policy
IMP-10911 - Policy data cannot be sent to Community Defense

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61895.htm)



