# Get-SecureSphereServerGroupsAppliedPolicies

## SYNOPSIS
Get server groups applied web security policies.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereServerGroupsAppliedPolicies -SiteName <String> -ServerGroupName <String> [<CommonParameters>]
```

## DESCRIPTION
Get server groups applied web security policies.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereServerGroupsAppliedPolicies -SiteName "Denver" -ServerGroupName
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
},{
"name":"Network Protocol Violations Policy",
"type":"Network Protocol Validation",
"som":false,
"adc":false,
"system":false
}]}

## NOTES

### Error Codes
IMP-10006 - Site not found
IMP-10008 - Server Group not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69916.htm)



