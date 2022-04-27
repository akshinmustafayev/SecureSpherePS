# Remove-SecureSphereDBSecurityPolicyFromApplication

## SYNOPSIS
Removes a specified DB security policy from the application specified by the path defined by the parameters.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereDBSecurityPolicyFromApplication -SiteName <String> -ServerGroupName <String> -DBServiceName <String> -DBApplicationName <String> -PolicyName <String> [<CommonParameters>]
```

## DESCRIPTION
Removes a specified DB security policy from the application specified by the path defined by the parameters.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereDBSecurityPolicyFromApplication -SiteName "Denver" -ServerGroupName "HR-Prod" -DBServiceName "Payroll-Oracle9" -DBApplicationName "Payroll" -PolicyName "SQL Profile Policy"
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
This parameter specifies the name of the application from which to remove the DB security policy.

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
This parameter specifies the name of the DB security policy to remove.

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
IMP-10006 - Site not found.
IMP-10008 - Server Group not found.
IMP-10014 - Application not found.
IMP-10017 - Service not found.
IMP-10033 - Policy not found.
IMP-10038 - Policy not applied to application.
IMP-10060 - Policy cannot be removed since it is locked on application parent application group.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61683.htm)



