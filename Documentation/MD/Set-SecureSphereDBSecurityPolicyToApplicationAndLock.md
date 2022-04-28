# Set-SecureSphereDBSecurityPolicyToApplicationAndLock

## SYNOPSIS
Applies an existing DB security policy to an application group and locks the policy to the application group.

## SYNTAX

### Parameter Set 1 (Default)
```
Set-SecureSphereDBSecurityPolicyToApplicationAndLock -ApplicationGroupName <String> -PolicyName <String> [<CommonParameters>]
```

## DESCRIPTION
Applies an existing DB security policy to an application group and locks the policy to the application group.

Locking a policy to an application group applies the policy to all applications within the application group, including applications that are added to the group in the future. When an application is removed from the application group, the policy no longer applies to the application.

## EXAMPLES

### EXAMPLE 1

```powershell
Set-SecureSphereDBSecurityPolicyToApplicationAndLock -ApplicationGroupName -PolicyName "SQL Profile Policy"
```

## PARAMETERS

### ApplicationGroupName
This parameter specifies the name of the application group to which to apply and lock the DB security policy.

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
This parameter specifies the name of the policy to apply and lock to the application group.

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
IMP-10031 - Application group not found.
IMP-10033 - Policy not found.
IMP-10036 - Policy cannot be applied to application group. Mismatch between policy type and application group.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61684.htm)



