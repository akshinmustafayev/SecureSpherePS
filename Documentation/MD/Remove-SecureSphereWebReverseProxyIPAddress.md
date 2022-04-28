# Remove-SecureSphereWebReverseProxyIPAddress

## SYNOPSIS
Delete an IP address indicated by the path parameter IPip from the gateway indicated by the path parameter gatewayName.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereWebReverseProxyIPAddress -GatewayName <String> -IPAddress <String> [<CommonParameters>]
```

## DESCRIPTION
Delete an IP address indicated by the path parameter IPip from the gateway indicated by the path parameter gatewayName.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereWebReverseProxyIPAddress -GatewayName "gw_01" -IPAddress "10.1.1.12"
```

## PARAMETERS

### GatewayName
This parameter specifies the name of the gateway to which the IP will be assigned.

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
This parameter specifies the IP address to add, without subnet mask.

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
IMP-10102 - Gateway not found
IMP-10179 - Unknown IP address
IMP-10184 - Management IP address cannot be deleted

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66820.htm)



