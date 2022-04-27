# Get-SecureSphereDBSecurityPoliciesAppliedToService

## SYNOPSIS
Returns a list of all DB security policies applied to the service specified by the path defined by the parameters.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBSecurityPoliciesAppliedToService -SiteName <String> -ServerGroupName <String> -DBServiceName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a list of all DB security policies applied to the service specified by the path defined by the parameters.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBSecurityPoliciesAppliedToService -SiteName "Denver" -ServerGroupName "HR-Prod" -DBServiceName "Payroll-Oracle9"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the server group to access.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ServerGroupName
This parameter specifies the name of the server group to access.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### DBServiceName
This parameter specifies the name of the service to which the DB security policies are applied.

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
"security-policies":[
{"policy-name":"Oracle - Attempt to Execute Database Export", "policy-type": "DB Service Custom"},
{"policy-name": "PCI - Violations caused by admin", "policy-type": "DB Service Custom"}
]}

## NOTES

### Error Codes
IMP-10006 - Site not found.
IMP-10008 - Server Group not found.
IMP-10017 - Service not found.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61686.htm)



