# Get-SecureSphereGateway

## SYNOPSIS
Returns details of a Gateway indicated by the path parameter gatewayName.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereGateway -GatewayName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns details of a Gateway indicated by the path parameter gatewayName.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereGateway -GatewayName "gw01"
```

## PARAMETERS

### GatewayName
This parameter specifies the name of the gateway to retrieve.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: 72
Pipeline Input: False
```

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
{
"gatewayGroupName":"prod-01",
"gatewayModel":"X2510",
"applianceType":"vm",
"gatewayIP":"10.1.1.1/24",
"networkInterfaceList":"eth0,eth1",
"platformType":"imperva",
"softwareVersion":"12.0.0.1"
}

## NOTES

### Error Codes
IMP-10102 - Gateway not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69346.htm)



