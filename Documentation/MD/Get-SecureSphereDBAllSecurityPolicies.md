# Get-SecureSphereDBAllSecurityPolicies

## SYNOPSIS
Returns a list of all DB security policies in the system.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBAllSecurityPolicies [<CommonParameters>]
```

## DESCRIPTION
Returns a list of all DB security policies in the system. The apply-level query parameter enables filtering the list by service-level and application-level policies.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBAllSecurityPolicies
```

## PARAMETERS

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
{
"security-policies": [
{"policy-type": "DB Service Custom", "policy-name": "Oracle - Attempt to Execute Database Export"},
{"policy-type": "DB Service Custom", "policy-name": "PCI - Violations caused by admin"}
]}

## NOTES

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61688.htm)



