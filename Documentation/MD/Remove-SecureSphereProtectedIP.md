# Remove-SecureSphereProtectedIP

## SYNOPSIS
Deletes the protected IP indicated by the path parameters siteName, serverGroupName and IPAddress and the query parameter gatewayGroup.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereProtectedIP -SiteName <String> -ServerGroupName <String> -IPAddress <String> -GatewayGroupName <String> [<CommonParameters>]
```

## DESCRIPTION
Deletes the protected IP indicated by the path parameters siteName, serverGroupName and IPAddress and the query parameter gatewayGroup.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereProtectedIP -SiteName "some_site" -ServerGroupName "some_group" -IPAddress "10.101.1.1" -GatewayGroupName "gw_group01"
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

### IPAddress
This parameter specifies the address of the protected IP to delete.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### GatewayGroupName
This parameter specifies the gateway group of the IP address to delete.

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
IMP-10010 - Invalid IP address. Please enter a valid IP address, then try again.
IMP-10013 - Gateway Group not found
IMP-10072 - Query parameter \\" gatewayGroup\\" is missing
IMP-10011 - Protected IP not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61635.htm)



