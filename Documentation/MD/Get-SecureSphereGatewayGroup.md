# Get-SecureSphereGatewayGroup

## SYNOPSIS
Get the Gateway Group indicated by the path parameter gatewayGroupName.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereGatewayGroup -GatewayGroupName <String> [<CommonParameters>]
```

## DESCRIPTION
Get the Gateway Group indicated by the path parameter gatewayGroupName.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereGatewayGroup -GatewayGroupName "gw_group01"
```

## PARAMETERS

### GatewayGroupName
This parameter specifies the name of the gateway group name to retrieve.

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
"gatewayGroupName": "krp2",
"gatewayPlatform": "imperva",
"gatewayMode": "reverseProxy",
"failMode": "failClose",
"cluster": false,
"overloadPolicy": true
}

## NOTES

### Error Codes
IMP-10013 - Gateway Group not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70353.htm)



