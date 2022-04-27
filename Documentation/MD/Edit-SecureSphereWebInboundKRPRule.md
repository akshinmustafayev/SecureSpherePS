# Edit-SecureSphereWebInboundKRPRule

## SYNOPSIS
Updates a KRP Inbound rule, a decision rule which defines how to handle incoming web traffic, indicated by the path parameters gatewayGroupName, aliasName and gatewayPort, for the given Web service indicated by the path parameters siteName, serverGroupName and webServiceName.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereWebInboundKRPRule -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -GatewayGroupName <String> -AliasName <String> -GatewayPort <String> [-NewAliasName <String>] [-GatewayPorts <UInt32[]>] [-NewGatewayGroupName <String>] [-ClientSideSslSettings <String>] [-ServerCertificate <String>] [-ClientAuthenticationAuthorities <String>] [<CommonParameters>]
```

### Parameter Set 2
```
Edit-SecureSphereWebInboundKRPRule -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -GatewayGroupName <String> -AliasName <String> -GatewayPort <String> [-NewAliasName <String>] [<CommonParameters>]
```

## DESCRIPTION
Updates a KRP Inbound rule, a decision rule which defines how to handle incoming web traffic, indicated by the path parameters gatewayGroupName, aliasName and gatewayPort, for the given Web service indicated by the path parameters siteName, serverGroupName and webServiceName. The rule is created with the Outbound KRP rule indicated by the path parameter priority.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereWebInboundKRPRule -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -GatewayGroupName "my_gw1" -AliasName "My GW 1" -GatewayPort 20 -GatewayPorts @(123,12) -ServerCertificate "imperva-cert" -ClientAuthenticationAuthorities "Default CA"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the web application.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ServerGroupName
This parameter specifies the name of the parent server group of the web application.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### WebServiceName
This parameter specifies the name of the parent service of the web application.

```yaml
Type: String
Parameter Sets: (All)
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
Parameter Sets: (All)
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
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### GatewayPort
This parameter specifies the port that defines the inbound KRP rule.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### NewAliasName
This parameter specifies the new name of the alias that defines the inbound KRP rule. Once changed the URL path changes

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### GatewayPorts
This parameter specifies the list of ports that defines the inbound KRP rule. Once changed the URL path changes.

```yaml
Type: UInt32[]
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### NewGatewayGroupName
This parameter sets the new name of the server group that contains the gateways on which the alias was created. Once changed the URL path changes.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ClientSideSslSettings
This parameter specifies the client side SSL Settings object to set the different SSL parameters towards WEB Client. If not set, GW’s default settings take affect. "null" resets the field to empty.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ServerCertificate
This parameter sets Server Certificate from Service list to be sent toward WEB Client. If not set, KRP rule is set as non-SSL (HTTP only). "null" resets the field to empty.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ClientAuthenticationAuthorities
This parameter sets the Client certificate CAs (list) global object, used to authenticate the Client certificate.

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
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10013 - Gateway Group not found
IMP-10017 - Service not found
IMP-10020 - The gateway port must be between 1 and 65535
IMP-10051 - KRP Alias not found
IMP-10053 - KRP inbound rule not found
IMP-10059 - This combination of Alias {0} and Port {1} is already used in Server Group {2}, Service {3}
IMP-10401 - Server Certificate not found
IMP-10411 - Client Authentication Authorities not found
IMP-10412 - To correctly configure client authentication a Server Certificate should be defined
IMP-10413 - To correctly configure client authentication for a certain URL Prefix both a Client Authentication Authority and a Client Authentication Rule should be defined
IMP-10415 - Server Certificate must be specified when SSL Negotiation Settings are configured

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61878.htm)



