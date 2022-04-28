# Get-SecureSphereAllProtectedIPs

## SYNOPSIS
Returns a list of the protected IPs under the given server group, as indicated by the path parameters siteName and serverGroupName.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereAllProtectedIPs -SiteName <String> -ServerGroupName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a list of the protected IPs under the given server group, as indicated by the path parameters siteName and serverGroupName.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereAllProtectedIPs -SiteName "some site" -ServerGroupName "some group"
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

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
{
"protected-ips": "[{"ip": "10.1.1.1", "gateway-group": "gw1", "comment":"some comment"},{"ip":"10.2.2.2", "gateway-group": "gw2"}]"
}

## NOTES

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61636.htm)



