# Get-SecureSphereGatewayAdvancedConfiguration

## SYNOPSIS
Returns the gateway group advanced configuration.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereGatewayAdvancedConfiguration -GatewayGroupName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns the gateway group advanced configuration.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereGatewayAdvancedConfiguration -GatewayGroupName "gw_group01"
```

## PARAMETERS

### GatewayGroupName
This parameter specifies the name of the gateway group to access.

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
{"advancedConfiguration":"<sni-info enable=\\"true\\"\></sni-info\>"}

## NOTES

### Error Codes
IMP-10013 - Gateway Group not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69935.htm)



