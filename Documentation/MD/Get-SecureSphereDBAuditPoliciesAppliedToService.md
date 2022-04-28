# Get-SecureSphereDBAuditPoliciesAppliedToService

## SYNOPSIS
Returns a list of audit policies applied to the service with the name indicated by the path parameters siteName, serverGroupName and dbServiceName.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBAuditPoliciesAppliedToService -SiteName <String> -ServerGroupName <String> -DBServiceName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a list of audit policies applied to the service with the name indicated by the path parameters siteName, serverGroupName and dbServiceName.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBAuditPoliciesAppliedToService -SiteName "Denver" -ServerGroupName "HR-Prod" -DBServiceName "Payroll-Oracle9"
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

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
{
"audit-policies":[{"policy-name":"Database configuration changes","policy-type":" DB Audit Service"},{"policy-name":"Default Rule - All Events","policy-type":" DB Audit Service"}]
}

## NOTES

### Error Codes
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10017 - Service not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61697.htm)



