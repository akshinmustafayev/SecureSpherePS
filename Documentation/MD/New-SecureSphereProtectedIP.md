# New-SecureSphereProtectedIP

## SYNOPSIS
Creates a protected IP under the given server group indicated by the path parameters siteName and serverGroupName.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereProtectedIP -SiteName <String> -ServerGroupName <String> -IPAddress <String> -GatewayGroupName <String> [-Comment <String>] [<CommonParameters>]
```

### Parameter Set 2
```
New-SecureSphereProtectedIP -SiteName <String> -ServerGroupName <String> -IPAddress <String> -GatewayGroupName <String> [<CommonParameters>]
```

## DESCRIPTION
Creates a protected IP under the given server group indicated by the path parameters siteName and serverGroupName. The protected IP key is a combination of the IP address indicated by the path parameter IPAddress, and the gateway group indicated by the query parameter gatewayGroup.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereProtectedIP -SiteName "some_site" -ServerGroupName "some_group" -IPAddress "10.101.1.1" -GatewayGroupName "gw_group01" -Comment "some comment"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the server group to access.

```yaml
Type: String
Parameter Sets: (All)
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
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### IPAddress
This parameter specifies the address of the protected IP to create.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### GatewayGroupName
This parameter specifies the gateway group to protect the ip address.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Comment
This parameter specifies the comment.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
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
IMP-10012 - A protected IP with this combination of IP and gateway group already protected by some server group. please configure a different combination
IMP-10010 - Invalid IP address. Please enter a valid IP address, then try again.
IMP-10072 - Query parameter \\" gatewayGroup\\" is missing
IMP-10013 - Gateway Group not found
IMP-10086 - Cannot create Protected IP, number of Instances exceeds the system limitation (maxNumOfProtectedIpsAllowed).

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61633.htm)



