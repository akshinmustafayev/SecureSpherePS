# Remove-SecureSphereGatewayGroup

## SYNOPSIS
Get the Gateway Group indicated by the path parameter gatewayGroupName.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereGatewayGroup -GatewayGroupName <String> [<CommonParameters>]
```

## DESCRIPTION
Get the Gateway Group indicated by the path parameter gatewayGroupName.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereGatewayGroup -GatewayGroupName "gw_group01"
```

## PARAMETERS

### GatewayGroupName
This parameter specifies the name of the gateway group name to delete.

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
IMP-10178 - The Gateway Group {gateway group name} cannot be deleted since it is connected to Gateway {gateway name}.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70354.htm)



