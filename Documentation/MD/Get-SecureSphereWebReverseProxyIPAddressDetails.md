# Get-SecureSphereWebReverseProxyIPAddressDetails

## SYNOPSIS
Retrieve an IP address's details indicated by the path parameter ip of the gateway indicated by the path parameter gatewayName.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereWebReverseProxyIPAddressDetails -GatewayName <String> -IPAddress <String> [<CommonParameters>]
```

## DESCRIPTION
Retrieve an IP address's details indicated by the path parameter ip of the gateway indicated by the path parameter gatewayName.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereWebReverseProxyIPAddressDetails -GatewayName "gw_01" -IPAddress "10.1.1.12"
```

## PARAMETERS

### GatewayName
This parameter specifies the name of the gateway whose IP details will be obtained.

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
This parameter specifies the IP address without subnet mask.

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
"networkInterface":"eth1",
"mask":24,
"virtualAddress":true,
"vrId":81,
"nextHop":"10.2.0.255/24"
}

## NOTES

### Error Codes
IMP-10102 - Gateway not found
IMP-10179 - Unknown IP address

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66821.htm)



