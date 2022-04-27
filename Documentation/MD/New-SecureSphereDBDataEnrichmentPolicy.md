# New-SecureSphereDBDataEnrichmentPolicy

## SYNOPSIS
Creates a new data enrichment policy.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereDBDataEnrichmentPolicy -PolicyName <String> [-Policy <Array>] [<CommonParameters>]
```

### Parameter Set 2
```
New-SecureSphereDBDataEnrichmentPolicy -PolicyName <String> [<CommonParameters>]
```

## DESCRIPTION
Creates a new data enrichment policy.

## EXAMPLES

### EXAMPLE 1

```powershell
$Policy = @{
    "rules"          = @(
        @{
            "type"                  = "custom";
            "enabled"               = $true;
            "groups"                = @{
                "source-event-field" = "Database User Names";
            };
            "target-field-name"     = "SourceIP|user";
            "extraction-method"     = "Lookup From Data Set";
            "retention-definitions" = @{
                "ttl"                      = 3600;
                "relative-order"           = 1;
                "override-existing-values" = $true;
                "tagging-scope"            = "Event";
            }
        }
    );
    "policy-name"    = "myEnrichmentPolicy";
    "policy-type"    = "db";
    "apply-to"       = @(
        "mySite/myServerGroup/ora3",
        "Default Site/SG2/MySQL2"
    );
    "match-criteria" = @(
        @{
            "type"                  = "simple";
            "name"                  = "Event Type";
            "operation"             = "Equals";
            "values"                = @(
                @{
                    "value" = "Login";
                }
            );
            "handle-unknown-values" = $false
        }
    )
}

New-SecureSphereDBDataEnrichmentPolicy -PolicyName "some policy" -Policy $Policy
```

## PARAMETERS

### PolicyName
This parameter specifies the name of the policy.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Policy
This parameter specifies policy.

```yaml
Type: Array
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

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70926.htm)



