# Get-SecureSphereWebApplicationAppliedPolicies

## SYNOPSIS
Get applications applied web security policies.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereWebApplicationAppliedPolicies -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -WebApplicationName <String> [<CommonParameters>]
```

## DESCRIPTION
Get applications applied web security policies.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereWebApplicationAppliedPolicies -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -WebApplicationName "Official-Website"
```

## PARAMETERS

### SiteName
This parameter specifies the site name.

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
This parameter specifies the server group name.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### WebServiceName
This parameter specifies the web service name.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### WebApplicationName
This parameter specifies the web application name.

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
"policies":[{
"name":"Firewall Policy",
"type":"Firewall Policy",
"som":true,
"adc":false,
"system":false
},{"name":"Network Protocol Violations Policy",
"type":"Network Protocol Validation",
"som":false,
"adc":false,
"system":false
}]}

## NOTES

### Error Codes
Response Body Format:
1. policy-name. String value. Policy Name
2. policy-type. String value. Policy type
3. som. Boolean value. Indication whether this policy came from SOM
4. adc. Boolean value. Indication whether this policy was imported from adc content
5. system. Boolean value. FI policy

### Error Codes
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10014 - Application not found
IMP-10017 - Service not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69919.htm)



