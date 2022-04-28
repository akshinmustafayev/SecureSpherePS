# Edit-SecureSphereWebReverseProxyIPAddress

## SYNOPSIS
Update an IP address indicated by the path parameter ip IP to the gateway indicated by the path parameter and gatewayName.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereWebReverseProxyIPAddress -GatewayName <String> -IPAddress <String> [-NetworkInterface <String>] [-Mask [<UInt32>]] [-VirtualAddress] [-VrId <UInt32>] [-NextHop [<String>]] [-Comment <String>] [<CommonParameters>]
```

### Parameter Set 2
```
Edit-SecureSphereWebReverseProxyIPAddress -GatewayName <String> -IPAddress <String> [-NetworkInterface <String>] [<CommonParameters>]
```

## DESCRIPTION
Update an IP address indicated by the path parameter ip IP to the gateway indicated by the path parameter and gatewayName.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereWebReverseProxyIPAddress -GatewayName "gw_01" -IPAddress "10.1.1.12" -NetworkInterface "eth1" -Mask 24 -NextHop "10.2.0.255/24"
```

## PARAMETERS

### GatewayName
This parameter specifies the name of the gateway to which the IP will be assigned.

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
This parameter specifies the IP address to add, without subnet mask.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### NetworkInterface
This parameter specifies the name of network interface to which the IP will be assigned. Interfaces can be retrieved by calling "Get Gateway".

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Mask
This parameter specifies the Subnet mask.

```yaml
Type: UInt32
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Accepted Values: 0-32
Pipeline Input: False
```

### VirtualAddress
This parameter specifies if IP is virtual.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: False
Pipeline Input: False
```

### VrId
This parameter specifies the Id of virtual router. Required when virtual address is true. VR Id is defined in Virtual Routers definitions.

```yaml
Type: UInt32
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Accepted Values: 1-255
Pipeline Input: False
```

### NextHop
This parameter specifies the name IP address of the next hop. Value must be in CIDR notation.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
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
IMP-10016 - The "{paramName}" entered is illegal
IMP-10102 - Gateway not found
IMP-10151 - Property "propertyName" cannot be edited. Note: The only comment that can be updated is for Management and LAN IP addresses.
IMP-10152 - Invalid IP address in "{propertyName}" field
IMP-10179 - Unknown IP address
IMP-10183 - Next hop must be in the same network as the IP address
IMP-12601 - Network interface does not exist
IMP-12602 - Virtual Router ID does not exist

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66819.htm)



