# Remove-SecureSphereDBAuditPolicyFromApplication

## SYNOPSIS
Removes the policy with the name indicated by the path parameter policyName from the application with the name indicated by the path parameters siteName, serverGroupName, dbServiceName and dbApplicationName.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereDBAuditPolicyFromApplication -SiteName <String> -ServerGroupName <String> -DBServiceName <String> -DBApplicationName <String> -PolicyName <String> [<CommonParameters>]
```

## DESCRIPTION
Removes the policy with the name indicated by the path parameter policyName from the application with the name indicated by the path parameters siteName, serverGroupName, dbServiceName and dbApplicationName.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereDBAuditPolicyFromApplication -SiteName "Denver" -ServerGroupName "HR-Prod" -DBServiceName "Payroll-Oracle9" -DBApplicationName "Payroll" -PolicyName "PCI - Login"
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
This parameter specifies the name of the application to access.

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
This parameter specifies the name of the policy to remove.

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

### Error Cpdes
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10017 - Service not found
IMP-10014 - Application not found
IMP-10033 - Policy not found
IMP-10038 - Policy not applied to application
IMP-10060 - Policy cannot be removed since it is locked on application parent application group

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61694.htm)



