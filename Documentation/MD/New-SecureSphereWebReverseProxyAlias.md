# New-SecureSphereWebReverseProxyAlias

## SYNOPSIS
Create an Alias, represents the inbound IP address and the outbound IP address for a gateway in Reverse Proxy mode, indicated by the path parameter aliasName in the gateway indicated by the path parameter gatewayName.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereWebReverseProxyAlias -GatewayName <String> -AliasName <String> [-Enabled] -ExternalAddress <String> -InternalAddress <String> [-Comment <String>] [<CommonParameters>]
```

### Parameter Set 2
```
New-SecureSphereWebReverseProxyAlias -GatewayName <String> -AliasName <String> -ExternalAddress <String> -InternalAddress <String> [<CommonParameters>]
```

## DESCRIPTION
Create an Alias, represents the inbound IP address and the outbound IP address for a gateway in Reverse Proxy mode, indicated by the path parameter aliasName in the gateway indicated by the path parameter gatewayName.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereWebReverseProxyAlias -GatewayName "gw_01" -AliasName "some_alias" -ExternalAddress "10.0.1.2" -InternalAddress "10.0.1.3"
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

### AliasName
This parameter specifies the name of alias to create.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Enabled
This parameter indicates if alias is enabled.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: true
Pipeline Input: False
```

### ExternalAddress
This parameter specifies the address of the external interface.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### InternalAddress
This parameter specifies the address of the internal interface.

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
IMP-10016 - The "{paramName}" entered is illegal
IMP-10102 - Gateway not found
IMP-10131 - Alias name must be unique
IMP-10132 - Alias name may not exceed 100 characters
IMP-10152 - Invalid IP address in {param} field
IMP-10179 - Unknown IP address
IMP-10180 - Alias IP address is already in use, please use an IP address that is not used by another Alias

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66823.htm)



