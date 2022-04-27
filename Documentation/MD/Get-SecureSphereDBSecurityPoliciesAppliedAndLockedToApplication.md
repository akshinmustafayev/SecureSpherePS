# Get-SecureSphereDBSecurityPoliciesAppliedAndLockedToApplication

## SYNOPSIS
Returns a list of all DB security policies applied and locked to the specified application group.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBSecurityPoliciesAppliedAndLockedToApplication -ApplicationGroupName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a list of all DB security policies applied and locked to the specified application group.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBSecurityPoliciesAppliedAndLockedToApplication -ApplicationGroupName "HR-apps"
```

## PARAMETERS

### ApplicationGroupName
This parameter specifies the name of the application group to which the DB security policies are applied and locked.

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
IMP-10031 - Application group not found.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61688.htm)



