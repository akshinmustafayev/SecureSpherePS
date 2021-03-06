# Set-SecureSphereDBAuditPolicyToApplicationGroup

## SYNOPSIS
Locks the application group with the name indicated by the path parameter applicationGroupName and applies to this group the policy with the name indicated by the path parameter policyName.

## SYNTAX

### Parameter Set 1 (Default)
```
Set-SecureSphereDBAuditPolicyToApplicationGroup -ApplicationGroupName <String> -PolicyName <String> [<CommonParameters>]
```

## DESCRIPTION
Locks the application group with the name indicated by the path parameter applicationGroupName and applies to this group the policy with the name indicated by the path parameter policyName. The lock means that the policy is applied to all the application members within this application group, including the members that will be added in the future. Once an application member is removed from the application group, the policy is no longer applied to that member.

## EXAMPLES

### EXAMPLE 1

```powershell
Set-SecureSphereDBAuditPolicyToApplicationGroup -ApplicationGroupName "HR-apps" -PolicyName "PCI - Login audit"
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

### PolicyName
This parameter specifies the name of the policy to apply.

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

## NOTES

### Error Codes
IMP-10031 - Application group not found
IMP-10033 - Policy not found
IMP-10036 - Policy cannot be applied to application group. Mismatch between policy type and application group

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61695.htm)



