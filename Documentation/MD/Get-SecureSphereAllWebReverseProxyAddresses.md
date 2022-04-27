# Get-SecureSphereAllWebReverseProxyAddresses

## SYNOPSIS
Retrieve all IP addresses for the gateway indicated by the path parameter gatewayName.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereAllWebReverseProxyAddresses -GatewayName <String> [<CommonParameters>]
```

## DESCRIPTION
Retrieve all IP addresses for the gateway indicated by the path parameter gatewayName.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereWebReverseProxyIPAddressDetails -GatewayName "gw_01"
```

## PARAMETERS

### GatewayName
This parameter specifies the name of the gateway whose IP addresses you want to obtain.

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
"ips":[{"ip":"10.0.1.1","mask":24},{"ip":"10.0.1.2":"24"}]
}

## NOTES

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66822.htm)



