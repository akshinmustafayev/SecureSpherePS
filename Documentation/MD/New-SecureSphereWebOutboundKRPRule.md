# New-SecureSphereWebOutboundKRPRule

## SYNOPSIS
Creates a KRP Outbound rule, a decision rule that defines how to handle.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereWebOutboundKRPRule -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -GatewayGroupName <String> -AliasName <String> -GatewayPort <UInt32> -Priority <UInt32> [-ExternalHost <String>] [-UrlPrefix <String>] -InternalIpHost <String> -ServerPort <UInt32> [-Encrypt] [-ClientAuthenticationRules <String>] [-ValidateServerCertificate] [-ClientCertificate <String>] [-ServerSideSslSettings <String>] [<CommonParameters>]
```

### Parameter Set 2
```
New-SecureSphereWebOutboundKRPRule -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -GatewayGroupName <String> -AliasName <String> -GatewayPort <UInt32> -Priority <UInt32> -InternalIpHost <String> -ServerPort <UInt32> [<CommonParameters>]
```

## DESCRIPTION
Creates a KRP Outbound rule, a decision rule that defines how to handle:

Incoming web traffic, indicated by the path parameters aliasName and gatewayPort
For the given web service, indicated by the path parameters siteName, serverGroupName, webServiceName and gatewayGroupName

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereWebOutboundKRPRule -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -GatewayGroupName "myServerGroup" -AliasName "krp_alias" -GatewayPort 80 -Priority 3 -UrlPrefix "/avbc" -ExternalHost "www.imperva.com" -InternalIpHost "10.1.1.10" -ServerPort 80 -Encrypt $true -ClientAuthenticationRules "Default Authentication Rule"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the services to access.

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
This parameter specifies the name of the parent server group of the services to access.

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
This parameter specifies the name of the parent service of the web application to create.

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
Default Value: UInt32
Pipeline Input: False
```

### Priority
This parameter sets the decision rule’s priority.

```yaml
Type: UInt32
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ExternalHost
This parameter specifies the external host name for which this rule will be applied. When parameter is missing – external host is "any".

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### UrlPrefix
This parameter specifies the prefix of URLs (for example, /login/) for which traffic is to be directed. The string must begin with a forward slash "/". When missing – url prefix is "any".

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: any
Pipeline Input: False
```

### InternalIpHost
This parameter specifies the IP address or the host name of the Web server to which traffic is forwarded.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ServerPort
This parameter specifies the port number on the Web server to which traffic is forwarded.

```yaml
Type: UInt32
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Encrypt
This parameter indicates whether to encrypt the connection between the SecureSphere gateway and the Web server.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: false
Pipeline Input: False
```

### ClientAuthenticationRules
This parameter specifies the Client Authentication Rules that determine the course of action taken when certificate validation succeeds or fails

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ValidateServerCertificate
This parameter validates the certificate presented by the web server.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ClientCertificate
This parameter sets the client certificates to present to the web server.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: No Client Certificate
Pipeline Input: False
```

### ServerSideSslSettings
This parameter specifies the SSL Settings global object to be used

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: Default is to use GW default settings.
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
IMP-10015 - Required body parameter is missing
IMP-10016 - The priority entered is illegal
IMP-10016 - The format of the externalHost entered is illegal
IMP-10016 - The format of the external URL Prefix entered is illegal
IMP-10016 - The host/IP format is of the internalIpHost entered is illegal
IMP-10016 - The value used for encrypt is illegal
IMP-10017 - Service not found
IMP-10020 - Port must be between 1 and 65535
IMP-10051 - KRP Alias not found
IMP-10052 - The Client Authentication Rule not found
IMP-10053 - KRP inbound rule not found
IMP-10054 - The Kernel Reverse Proxy outbound rule with the combination externalHost and UrlPrefix already exists for a rule with a higher priority. Example: A rule with priority 1 is defined with external host "any"; then a new rule is added with priority 2 and external host that is not "any."
IMP-10058 - Invalid outbound Reverse Proxy Rule host name
IMP-10402 - Client Certificate specified not found
IMP-10403 - The Validate Server Certificate option cannot be enabled without at least one Certificate Authority defined in Global Objects.
IMP-10412 - To correctly configure client authentication a Server Certificate should be defined
IMP-10413 - To correctly configure client authentication for a certain URL Prefix both a Client Authentication Authority and a Client Authentication Rule should be defined
IMP-10414 - Server SSL Negotiation Settings cannot be configured without 'Encrypt' enabled.
IMP-10421 - Reverse proxy rule priority is not unique.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61882.htm)



