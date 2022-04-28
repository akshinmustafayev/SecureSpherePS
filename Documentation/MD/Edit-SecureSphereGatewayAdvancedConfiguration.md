# Edit-SecureSphereGatewayAdvancedConfiguration

## SYNOPSIS
Update gateway groups advanced configuration.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereGatewayAdvancedConfiguration -GatewayGroupName <String> -AdvancedConfiguration <String> [<CommonParameters>]
```

## DESCRIPTION
Update gateway groups advanced configuration.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereGatewayAdvancedConfiguration -GatewayGroupName "gw_group01" -AdvancedConfiguration "<xml>some string</xml>"
```

## PARAMETERS

### GatewayGroupName
This parameter specifies the name of the gateway group.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### AdvancedConfiguration
This parameter specifies the configuration to insert.

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

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69934.htm)



