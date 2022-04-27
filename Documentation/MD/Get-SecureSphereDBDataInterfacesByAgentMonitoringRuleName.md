# Get-SecureSphereDBDataInterfacesByAgentMonitoringRuleName

## SYNOPSIS
Returns all data interfaces connected to an agent monitoring rule with the given name.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBDataInterfacesByAgentMonitoringRuleName -RuleName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns all data interfaces connected to an agent monitoring rule with the given name.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBDataInterfacesByAgentMonitoringRuleName -RuleName "some_rule"
```

## PARAMETERS

### RuleName
This parameter specifies the name of the agent monitoring rule.

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
"data-interfaces":
[{
"id": "-456387688",
"port": "1433",
"type": "TCP",
"ignore": true,
"service":
{
"siteName":"Denver",
"serverGroupName":"HR-Prod",
"serviceName":"Payroll-Oracle9",
"serviceType":"DB",
"serviceSubType":"Oracle"
}},{
"id": "-456387688",
"port": "1433",
"type": "TCP",
"ignore": true,
"service":null},
}]}

## NOTES

### Error Codes
IMP-10033 - Policy not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70903.htm)



