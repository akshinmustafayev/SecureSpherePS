# Remove-SecureSphereWebInboundKRPRule

## SYNOPSIS
Deletes an KRP Inbound rule, a decision rule which defines how to handle incoming Web traffic, indicated by the path parameters gatewayGroupName, aliasName and gatewayPort, for the given Web service indicated by the path parameters siteName, serverGroupName and webServiceName.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereWebInboundKRPRule -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -GatewayGroupName <String> -AliasName <String> -GatewayPort <UInt32> [<CommonParameters>]
```

## DESCRIPTION
Deletes an KRP Inbound rule, a decision rule which defines how to handle incoming Web traffic, indicated by the path parameters gatewayGroupName, aliasName and gatewayPort, for the given Web service indicated by the path parameters siteName, serverGroupName and webServiceName. All the inbound rules are deleted.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereWebInboundKRPRule -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -GatewayGroupName "my_gw1" -AliasName "My GW 1" -GatewayPort "20"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the web application to delete.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ServerGroupName
This parameter specifies the name of the parent server group of the web application to delete.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### WebServiceName
This parameter specifies the name of the parent service of the web application to delete.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### GatewayGroupName
This parameter specifies the name of the server group that contains the gateways on which the alias was created.

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
This parameter specifies the name of the alias that defines the inbound KRP rule.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### GatewayPort
This parameter specifies the port that defines the inbound KRP rule.

```yaml
Type: UInt32
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
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10013 - Gateway Group not found
IMP-10017 - Service not found
IMP-10051 - KRP Alias not found
IMP-10053 - KRP inbound rule not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61879.htm)



