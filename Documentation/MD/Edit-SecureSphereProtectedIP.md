# Edit-SecureSphereProtectedIP

## SYNOPSIS
Updates the protected IP indicated by the path parameters siteName, serverGroupName and IPAddress and the query parameter gatewayGroup.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereProtectedIP -SiteName <String> -ServerGroupName <String> -IPAddress <String> -GatewayGroupName <String> [-NewIPAddress <String>] [-NewGatewayGroupName <String>] [-NewComment <String>] [<CommonParameters>]
```

### Parameter Set 2
```
Edit-SecureSphereProtectedIP -SiteName <String> -ServerGroupName <String> -IPAddress <String> -GatewayGroupName <String> [-NewIPAddress <String>] [<CommonParameters>]
```

### Parameter Set 3
```
Edit-SecureSphereProtectedIP -SiteName <String> -ServerGroupName <String> -IPAddress <String> -GatewayGroupName <String> [-NewGatewayGroupName <String>] [<CommonParameters>]
```

### Parameter Set 4
```
Edit-SecureSphereProtectedIP -SiteName <String> -ServerGroupName <String> -IPAddress <String> -GatewayGroupName <String> [-NewComment <String>] [<CommonParameters>]
```

## DESCRIPTION
Updates the protected IP indicated by the path parameters siteName, serverGroupName and IPAddress and the query parameter gatewayGroup.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereProtectedIP -SiteName "some_site" -ServerGroupName "some_group" -IPAddress "10.101.1.1" -GatewayGroupName "gw_group01" -NewIPAddress "10.2.2.2" -NewGatewayGroupName "GG1" -NewComment "some comment"
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
This parameter specifies the address of the protected IP to access.

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
This parameter specifies the gateway group to protect the IP address.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### NewIPAddress
This parameter specifies the new IP address.

```yaml
Type: String
Parameter Sets: Parameter Set 1, Parameter Set 2
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### NewGatewayGroupName
This parameter specifies the new name of the new gateway group of the protected IP.

```yaml
Type: String
Parameter Sets: Parameter Set 1, Parameter Set 3
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### NewComment
This parameter specifies the new comment.

```yaml
Type: String
Parameter Sets: Parameter Set 1, Parameter Set 4
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
IMP-10011 - Protected IP not found
IMP-10012 - A protected IP with this combination of IP and gateway group already protected by some server group. please configure a different combination
IMP-10010 - Invalid IP address. Please enter a valid IP address, then try again.
IMP-10072 - Query parameter \\" gatewayGroup\\" is missing"
IMP-10013 - Gateway Group not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61634.htm)



