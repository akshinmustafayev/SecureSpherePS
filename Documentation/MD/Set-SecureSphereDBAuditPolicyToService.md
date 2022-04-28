# Set-SecureSphereDBAuditPolicyToService

## SYNOPSIS
Applies a policy with the name indicated by the path parameter policyName to the service with the name indicated by the path parameters siteName, serverGroupName and dbServiceName.

## SYNTAX

### Parameter Set 1 (Default)
```
Set-SecureSphereDBAuditPolicyToService -SiteName <String> -ServerGroupName <String> -DBServiceName <String> -PolicyName <String> [<CommonParameters>]
```

## DESCRIPTION
Applies a policy with the name indicated by the path parameter policyName to the service with the name indicated by the path parameters siteName, serverGroupName and dbServiceName.

## EXAMPLES

### EXAMPLE 1

```powershell
Set-SecureSphereDBAuditPolicyToService -SiteName "Denver" -ServerGroupName "HR-Prod" -DBServiceName "Payroll-Oracle9" -PolicyName "PCI - Login"
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
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10017 - Service not found
IMP-10033 - Policy not found
IMP-10034 - Policy cannot be applied to service. Mismatch between policy type and service

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61672.htm)



