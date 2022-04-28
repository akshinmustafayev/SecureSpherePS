# Get-SecureSphereDBAgentMonitoringRuleByName

## SYNOPSIS
Returns an agent monitoring rule by its name.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBAgentMonitoringRuleByName -RuleName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns an agent monitoring rule by its name.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBAgentMonitoringRuleByName -RuleName "some_rule"
```

## PARAMETERS

### RuleName
This parameter specifies the name of the agent of the agent monitoring rule.

```yaml
Type: String
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

### Response Body
{
"action":"Exclude",
"policy-name":"someRule",
"policy-type":"db-agents-monitoring-rule",
"custom-predicates":
[{
"operation":"exclude-all",
"predicate-type":"agent-criteria-source-ip",
"agent-criteria-source-ips":
[{
"source-ip-type":"ip-range",
"first-ip":"10.1.1.1",
"second-ip":"10.2.2.2"
},{
"source-ip-type":"ip-mask",
"first-ip":"10.1.1.0",
"network-prefix-size":24
},{
"source-ip-type":"single-ip",
"first-ip":"10.1.1.1"
}]},{
"operation":"exclude-all",
"predicate-type":"source-ip",
"source-ips":
[{
"source-ip-type":"ip-group",
"ip-group-name":"Ask IP Addresses"
},{
"source-ip-type":"single-ip",
"single-ip":"10.1.1.1"
}]}],
"total-num-of-predicates":2}

## NOTES

### Error Codes
IMP-10033 - Policy not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70900.htm)



