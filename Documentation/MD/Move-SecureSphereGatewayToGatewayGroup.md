# Move-SecureSphereGatewayToGatewayGroup

## SYNOPSIS
Move Gateway indicated by the path parameter gatewayName to Gateway Group indicated by the path parameter targetGatewayGroupName

## SYNTAX

### Parameter Set 1 (Default)
```
Move-SecureSphereGatewayToGatewayGroup -GatewayName <String> -TargetGatewayGroupName <String> [<CommonParameters>]
```

## DESCRIPTION
Move Gateway indicated by the path parameter gatewayName to Gateway Group indicated by the path parameter targetGatewayGroupName

## EXAMPLES

### EXAMPLE 1

```powershell
Move-SecureSphereGatewayToGatewayGroup -GatewayName "gw01" -TargetGatewayGroupName "gw_group01"
```

## PARAMETERS

### GatewayName
This parameter specifies the name of the gateway group to move the gateway from.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### TargetGatewayGroupName
This parameter specifies the name of the gateway group name to move the gateway to.

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
IMP-10013 - Gateway Group not found
IMP-10102 - Gateway not found
IMP-12503 - The gateway's mode does not match the group's.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66796.htm)



