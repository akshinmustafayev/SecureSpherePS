# New-SecureSphereWebInboundKRPRule

## SYNOPSIS
Creates an KRP Inbound rule, which is a decision rule that defines how to handle incoming Web traffic, indicated by the path parameters gatewayGroupName, aliasName and gatewayPort, for the given Web service indicated by the path parameters siteName, serverGroupName and webServiceName.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereWebInboundKRPRule -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -GatewayGroupName <String> -AliasName <String> -GatewayPort <UInt32> -OutboundRules <Array> [<CommonParameters>]
```

### Parameter Set 2
```
New-SecureSphereWebInboundKRPRule -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -GatewayGroupName <String> -AliasName <String> -GatewayPort <UInt32> [-ClientSideSslSettings <String>] -OutboundRules <Array> [<CommonParameters>]
```

### Parameter Set 3
```
New-SecureSphereWebInboundKRPRule -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -GatewayGroupName <String> -AliasName <String> -GatewayPort <UInt32> [-ServerCertificate <String>] -OutboundRules <Array> [<CommonParameters>]
```

### Parameter Set 4
```
New-SecureSphereWebInboundKRPRule -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -GatewayGroupName <String> -AliasName <String> -GatewayPort <UInt32> [-ClientAuthenticationAuthorities <String>] -OutboundRules <Array> [<CommonParameters>]
```

## DESCRIPTION
Creates an KRP Inbound rule, which is a decision rule that defines how to handle incoming Web traffic, indicated by the path parameters gatewayGroupName, aliasName and gatewayPort, for the given Web service indicated by the path parameters siteName, serverGroupName and webServiceName.

## EXAMPLES

### EXAMPLE 1

```powershell
$KRPOutboundRule = [KRPOutboundRule]::new()
$KRPOutboundRule.ExternalHost = "www.imperva.com"
$KRPOutboundRule.InternalIpHost = "10.1.1.10"
$KRPOutboundRule.ServerPort = 80
$KRPOutboundRule.Encrypt = $true
$KRPOutboundRule.ClientAuthenticationRules = "Default Authentication Rule"

$OutboundRules = @{
    "1" = $KRPOutboundRule.GetJson()
}

New-SecureSphereWebInboundKRPRule -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -GatewayGroupName "my_gw1" -AliasName "My GW 1" -GatewayPort "20,21,22" -ServerCertificate "imperva-cert" -OutboundRules $OutboundRules
```

### EXAMPLE 2

```powershell
$KRPOutboundRule1 = [KRPOutboundRule]::new()
$KRPOutboundRule1.ExternalHost = "www.imperva.com"
$KRPOutboundRule1.InternalIpHost = "10.1.1.10"
$KRPOutboundRule1.ServerPort = 80
$KRPOutboundRule1.Encrypt = $true
$KRPOutboundRule1.ClientAuthenticationRules = "Default Authentication Rule"

$KRPOutboundRule2 = [KRPOutboundRule]::new()
$KRPOutboundRule2.ExternalHost = "www.imperva.com"
$KRPOutboundRule2.InternalIpHost = "10.1.1.11"
$KRPOutboundRule2.ServerPort = 80
$KRPOutboundRule2.Encrypt = $true
$KRPOutboundRule21.ClientAuthenticationRules = "Default Authentication Rule 2"

$OutboundRules = @{
    "1" = $KRPOutboundRule1.GetJson()
    "2" = $KRPOutboundRule2.GetJson()
}

New-SecureSphereWebInboundKRPRule -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -GatewayGroupName "my_gw1" -AliasName "My GW 1" -GatewayPort "20,21,22" -ServerCertificate "imperva-cert" -OutboundRules $OutboundRules
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
Type: UInt32
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ClientSideSslSettings
This parameter specifies the client side SSL Settings object to set the different SSL parameters towards WEB Client. If not set, GW’s default settings take affect.

```yaml
Type: String
Parameter Sets: Parameter Set 2
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ServerCertificate
This parameter sets Server Certificate from Service list to be sent toward WEB Client. If not set, KRP rule is set as non-SSL (HTTP only).

```yaml
Type: String
Parameter Sets: Parameter Set 3
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
Parameter Sets: Parameter Set 4
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### OutboundRules
This parameter specifies outbound rules.

```yaml
Type: Array
Parameter Sets: (All)
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
KRPOutboundRule contains the following parameters:
1. ExternalHost - String value. Specify the external host name for which this rule will be applied. Optional. When missing – external host is "any".
2. UrlPrefix - String value. Specify the prefix of URLs (for example, /login/) for which traffic is to be directed to. Optional. When missing – url prefix is "any". 
3. InternalIpHost - String value. This parameter is mandatory. The IP address or the hostname of the Web server to which traffic is forwarded. 
4. ServerPort - UInt32 value. This parameter is mandatory. The port number on the Web server to which traffic is forwarded.
5. Encrypt - Boolean value. Indicate whether to encrypt the connection between the SecureSphere gateway and the Web server. Optional. Default is false.
6. ClientAuthenticationR - String value. The Client Authentication Rules that determine the course of action taken when certificate validation succeeds or fails. Optional. 
7. ValidateServerCertifica - Boolean value. Validate the certificate presented by the web server. Optional.
8. ClientCertificate - String value. Specify the client certificates to present to the web server. Optional. Default is no Client Certificate.
9. ServerSideSslSettings - String value. Specify the SSL Settings global object to be used. Optional. Default is to use GW default settings.

Example:
$KRPOutboundRule = [KRPOutboundRule]::new()
$KRPOutboundRule.ExternalHost = "www.imperva.com"
$KRPOutboundRule.InternalIpHost = "10.1.1.10"
$KRPOutboundRule.ServerPort = 80
$KRPOutboundRule.Encrypt = $true
$KRPOutboundRule.ClientAuthenticationRules = "Default Authentication Rule"

$OutboundRules = @{
    "1" = $KRPOutboundRule.GetJson()
}

### Error Codes
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10013 - Gateway Group not found
IMP-10016 - The priority entered is illegal
IMP-10016 - The "externalHost" entered is illegal
IMP-10016 - The format of the external URL Prefix entered is illegal
IMP-10016 - The host/IP format is of the internalIpHost entered is illegal
IMP-10016 - The encrypt entered is illegal
IMP-10016 - The Outbound Rules entered are illegal, its parameters are not a list
IMP-10016 - Reverse proxy rule cannot be negative or 0.
IMP-10017 - Service not found
IMP-10020 - Port must be between 1 and 65535
IMP-10026 - Body parameter ''outboundRules'' is missing
IMP-10051 - KRP Alias not found
IMP-10052 - The Client Authentication Rule not found
IMP-10059 - This combination of Alias {0} and Port {1} is already used in Server Group {2}, Service {3}
IMP-10153 - Invalid Port
IMP-10401 - Server Certificate not found
IMP-10411 - Client Authentication Authorities not found
IMP-10412 - To correctly configure client authentication a Server Certificate should be defined
IMP-10413 - To correctly configure client authentication for a certain URL Prefix both a Client Authentication Authority and a Client Authentication Rule should be defined
IMP-10421 - Reverse proxy rule priority is not unique.
IMP-10415 - Server Certificate must be specified when SSL Negotiation Settings are configured
IMP-12901 - SSL Settings Global Object not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61877.htm)



