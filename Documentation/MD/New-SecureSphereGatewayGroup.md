# New-SecureSphereGatewayGroup

## SYNOPSIS
Creates a new Gateway Group indicated by the path parameter gatewayGroupName.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereGatewayGroup -GatewayGroupName <String> -GatewayPlatform <String> -GatewayMode <String> -FailMode <String> [-OverloadPolicy] [<CommonParameters>]
```

### Parameter Set 2
```
New-SecureSphereGatewayGroup -GatewayGroupName <String> -GatewayPlatform <String> -GatewayMode <String> -FailMode <String> [<CommonParameters>]
```

## DESCRIPTION
Creates a new Gateway Group indicated by the path parameter gatewayGroupName.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereGatewayGroup -GatewayGroupName "gw_group01" -GatewayPlatform "imperva" -GatewayMode "reverseProxy"
```

## PARAMETERS

### GatewayGroupName
This parameter specifies the name of the gateway group to create.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### GatewayPlatform
This parameter specifies the type of gateway platform.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Accepted Values: imperva
                 amazon
                 azure
Pipeline Input: False
```

### GatewayMode
This parameter specifies the gateway operation mode. For platforms "amazon" and "azure", only "reverseProxy" is applicable. Reverse proxy is KRP.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Accepted Values: impvhaBridge
                 reverseProxy
Pipeline Input: False
```

### FailMode
This parameter specifies the Fail Mode. gatewayMode: IMPVHA Bridge: default Fail Close. KRP: Fail Close only.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Accepted Values: failOpen
                 failClose
Pipeline Input: False
```

### OverloadPolicy
This parameter specifies the Overload Policy. Optional. Default depends on gatewayMode: IMPVHA Bridge: true. KRP: true only.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: Default depends on gatewayMode.
Pipeline Input: False
```

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

### Error Codes
IMP-12501 - Gateway group already exists
IMP-10016 - The "{value}" entered is illegal for all body parameters
IMP-10016 - The "{paramName}" entered is illegal
IMP-10145 - Field length must be between 1 and 500
IMP-10182 - Field must not contain <,\>

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66791.htm)



