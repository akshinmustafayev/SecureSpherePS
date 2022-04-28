# Get-SecureSphereDBSecurityPoliciesAppliedToApplication

## SYNOPSIS
Returns a list of all DB security policies applied to the application specified by the path defined by the parameters.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBSecurityPoliciesAppliedToApplication -SiteName <String> -ServerGroupName <String> -DBServiceName <String> -DBApplicationName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a list of all DB security policies applied to the application specified by the path defined by the parameters.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBSecurityPoliciesAppliedToApplication -SiteName "Denver" -ServerGroupName "HR-Prod" -DBServiceName "Payroll-Oracle9" -DBApplicationName "Payroll"
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
This parameter specifies the name of the service to access.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### DBApplicationName
This parameter specifies the name of the application to which the DB security policies are applied.

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
{"policy-name": "SQL Profile Policy", "policy-type": "DB Profile"}
]}

## NOTES

### Error Codes
IMP-10006 - Site not found.
IMP-10008 - Server Group not found.
IMP-10014 - Application not found.
IMP-10017 - Service not found.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61687.htm)



