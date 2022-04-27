# Get-SecureSphereAllWebReverseProxyAliases

## SYNOPSIS
Retrieve all Aliases that are defined in the gateway indicated by the path parameters gatewayName.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereAllWebReverseProxyAliases -GatewayName <String> [<CommonParameters>]
```

## DESCRIPTION
Retrieve all Aliases that are defined in the gateway indicated by the path parameters gatewayName.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereAllWebReverseProxyAliases -GatewayName "gw_01"
```

## PARAMETERS

### GatewayName
This parameter specifies the name of the gateway.

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
"aliases":["alias1","alias2"]
}

## NOTES

### Error Codes
IMP-10102 - Gateway not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66827.htm)



