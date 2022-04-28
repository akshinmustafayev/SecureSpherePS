# Get-SecureSphereDBAuditPoliciesAppliedToApplicationGroup

## SYNOPSIS
Returns a list of all audit policies applied to the application group with the name indicated by the path parameters applicationGroupName.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBAuditPoliciesAppliedToApplicationGroup -ApplicationGroupName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a list of all audit policies applied to the application group with the name indicated by the path parameters applicationGroupName.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBAuditPoliciesAppliedToApplicationGroup -ApplicationGroupName "HR-apps"
```

## PARAMETERS

### ApplicationGroupName
This parameter specifies the name of the application group to access.

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
"audit-policies":[{"policy-name":"Audit all admin actions","policy-type":"DB Audit Application"},{"policy-name":"Audit all non-admin actions","policy-type":"DB Audit Application"}]
}

## NOTES

### Error Codes
IMP-10031 - Application group not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61698.htm)



