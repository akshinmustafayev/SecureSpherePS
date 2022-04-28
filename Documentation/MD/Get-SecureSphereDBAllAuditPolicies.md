# Get-SecureSphereDBAllAuditPolicies

## SYNOPSIS
Returns a list of all audit policies in the system. The list can be filtered by adding the query parameter apply-level.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBAllAuditPolicies -ApplyLevel <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a list of all audit policies in the system. The list can be filtered by adding the query parameter apply-level.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBAllAuditPolicies -ApplyLevel "dbServiceLevel"
```

## PARAMETERS

### ApplyLevel
This parameter specifies the level and product of the requested policies.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Accepted Values: dbServiceLevel
                 dbAppLevel
Pipeline Input: False
```

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
{
"audit-policies":" [{policy-type: "DB Audit Service", policy-name: "Audit all admin actions"}, {policy-type:"DB Audit Application", policy-name: "Audit all non-admin actions"}]"
}

## NOTES

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61700.htm)



