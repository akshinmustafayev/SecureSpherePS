# Remove-SecureSphereWebReverseProxyAlias

## SYNOPSIS
Delete an Alias, represents the inbound IP address and the outbound IP address for a gateway in Reverse Proxy mode, indicated by the path parameter aliasName in the gateway indicated by the path parameter and gatewayName.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereWebReverseProxyAlias -GatewayName <String> -AliasName <String> [<CommonParameters>]
```

## DESCRIPTION
Delete an Alias, represents the inbound IP address and the outbound IP address for a gateway in Reverse Proxy mode, indicated by the path parameter aliasName in the gateway indicated by the path parameter and gatewayName.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereWebReverseProxyAlias -GatewayName "gw_01" -AliasName "some_alias"
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

### AliasName
This parameter specifies the name of alias to delete.

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
IMP-10051 - KRP alias not found
IMP-10102 - Gateway not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66825.htm)



