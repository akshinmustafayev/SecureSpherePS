# Edit-SecureSphereDBAuditPolicy

## SYNOPSIS
Updates the details of an audit policy.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereDBAuditPolicy -PolicyName <String> -Policy <Array> [<CommonParameters>]
```

## DESCRIPTION
Updates the details of an audit policy.

## EXAMPLES

### EXAMPLE 1

```powershell
$Policy = @{
    "policy-name"                  = "Login audit";
    "policy-type"                  = "db-service";
    "apply-to"                     = @();
    "match-criteria"               = @(
        @{
            "type"                  = "simple";
            "name"                  = "Event Type";
            "operation"             = "Equals";
            "values"                = @(
                @{
                    "value" = "Login";
                }
            );
            "handle-unknown-values" = $false;
        }
    );
    
    "archiving-action-set"         = "Default Archive Action Set";
    "automatic-apply"              = "NotSet";
    "aggregation-time-slot"        = 30;
    "audit-parsed-query"           = $true;
    "collect-statistics"           = $true;
    "audit-responses-mode"         = "All";
    "num-days-to-audit"            = 7;
    "quota-giga-bytes"             = 200;
    "quota-percentage"             = 50;
    "counterbreach-policy-enabled" = $false;
    "archive-scheduling"           = @{
        "occurs" = "none"
    };
    "purge-archive-scheduling"     = @{
        "enabled"   = $true;
        "number"    = 1;
        "time-type" = "weeks";
    };
    
    "archive-response"             = $false;
    "user-defined-values"          = @();
    "use-gateway-configuration"    = $false;
    "data-collection-events"       = $true;
    "data-collection-db-response"  = $false;
}

Edit-SecureSphereDBAuditPolicy -PolicyName "Login audit" -Policy $Policy
```

## PARAMETERS

### PolicyName
This parameter specifies the name of the audit policy.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Policy
This parameter specifies policy parameters.

```yaml
Type: Array
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

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/77823.htm)



