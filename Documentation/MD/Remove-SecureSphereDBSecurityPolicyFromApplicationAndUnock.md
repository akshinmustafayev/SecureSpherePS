# Remove-SecureSphereDBSecurityPolicyFromApplicationAndUnock

## SYNOPSIS
Removes a DB security policy from an application group and unlocks the policy from the group.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereDBSecurityPolicyFromApplicationAndUnock -ApplicationGroupName <String> -PolicyName <String> [<CommonParameters>]
```

## DESCRIPTION
Removes a DB security policy from an application group and unlocks the policy from the group.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereDBSecurityPolicyFromApplicationAndUnock -ApplicationGroupName -PolicyName "SQL Profile Policy"
```

## PARAMETERS

### ApplicationGroupName
This parameter specifies the name of the application group from which to remove and unlock the DB security policy.

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
This parameter specifies the name of the DB security policy to remove and unlock from the application group.

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
IMP-10039 - Policy not locked to application group

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61685.htm)



