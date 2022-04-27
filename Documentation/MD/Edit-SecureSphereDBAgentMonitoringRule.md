# Edit-SecureSphereDBAgentMonitoringRule

## SYNOPSIS
Updates an existing agent monitoring rule.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereDBAgentMonitoringRule -RuleName <String> -UpdateType <Set of Parameters> [<CommonParameters>]
```

## DESCRIPTION
Updates an existing agent monitoring rule.

## EXAMPLES

### EXAMPLE 1

```powershell
$UpdateType = @{ 
    "action"                  = "Exclude";
    "policy-name"             = "someRule";
    "policy-type"             = "db-agents-monitoring-rule";
    "custom-predicates"       = @(

        @{
            "operation"                 = "exclude-all";
            "predicate-type"            = "agent-criteria-source-ip";
            "agent-criteria-source-ips" = @(
                @{
                    "source-ip-type" = "ip-range";
                    "first-ip"       = "10.1.1.1";
                    "second-ip"      = "10.2.2.2";
                },
                @{
                    "source-ip-type"      = "ip-mask";
                    "first-ip"            = "10.1.1.0";
                    "network-prefix-size" = 24;
                },
                @{
                    "source-ip-type" = "single-ip";
                    "first-ip"       = "10.1.1.1";
                }
            )
        },
        @{
            "operation"      = "exclude-all";
            "predicate-type" = "source-ip";
            "source-ips"     = @(
                @{
                    "source-ip-type" = "ipgroup";
                    "ip-group-name"  = "Ask IP Addresses";
                },
                @{
                    "source-ip-type" = "userdefined";
                    "single-ip"      = "10.1.1.1";
                }
            )
        }

    )
    "total-num-of-predicates" = 2
}

Edit-SecureSphereDBAgentMonitoringRule -RuleName "some_rule" -UpdateType $UpdateType
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

### UpdateType
This parameter specifies parameters to update. Full update (equivalent to null) or add-or-replace (if one of the predicates already exists, it will be replaced).

```yaml
Type: Set of Parameters
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
IMP-10033 - Policy not found
IMP-10015 - Cannot create policy item since the body parameter action is missing
IMP-10002 - Error while parsing JSON payload or an incompatible argument type for the requested resource

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70901.htm)



