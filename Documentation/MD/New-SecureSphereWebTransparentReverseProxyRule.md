# New-SecureSphereWebTransparentReverseProxyRule

## SYNOPSIS
Creates a Transparent Reverse Proxy rule, a decision rule which defines how to handle incoming Web traffic, indicated by the path parameters serverIp and listenerPort, for the given Web service indicated by the path parameters siteName, serverGroupName and webServiceName.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereWebTransparentReverseProxyRule -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -ServerIPAddress <String> -ListenerPortList <String> [-Certificate <String>] -ServerSidePort <UInt32> [-EncryptServerConnection] [-ClientSideSSLSettings <String>] [-ServerSideSSLSettings <String>] [<CommonParameters>]
```

### Parameter Set 2
```
New-SecureSphereWebTransparentReverseProxyRule -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -ServerIPAddress <String> -ListenerPortList <String> -ServerSidePort <UInt32> [<CommonParameters>]
```

## DESCRIPTION
Creates a Transparent Reverse Proxy rule, a decision rule which defines how to handle incoming Web traffic, indicated by the path parameters serverIp and listenerPort, for the given Web service indicated by the path parameters siteName, serverGroupName and webServiceName.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereWebTransparentReverseProxyRule -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -ServerIPAddress "10.1.1.2" -ListenerPortList 80 -Certificate "myCert" -ServerSidePort 8083 -EncryptServerConnection $true -ClientSideSSLSettings "High Performance RP Client Side SSL Settings" -ServerSideSSLSettings "High Performance RP Client Side SSL Settings"
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

### ServerIPAddress
This parameter specifies the IP of the protected server.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ListenerPortList
This parameter specifies the protected server ports (CSV) to which traffic was sent.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Certificate
This parameter specifies the SSL Key name of the certificate which will be presented to the client.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ServerSidePort
This parameter specifies the protected server port to which the traffic will be directed.

```yaml
Type: UInt32
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### EncryptServerConnection
This parameter indicates whether to encrypt the traffic.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: false
Pipeline Input: False
```

### ClientSideSSLSettings
This parameter specifies the SSL Settings Global Object name to be used. Default set to ‘None’ which means use GW SSL settings.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ServerSideSSLSettings
This parameter specifies the SSL Settings Global Object name to be used. Default set to ‘None’ which means use GW SSL settings.

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
IMP-10011 - Protected IP not found
IMP-10013 - Gateway Group not found
IMP-10016 - The "serverSidePort" entered is illegal when port format is illegal
IMP-10016 - The "listenerPortList" entered is illegal when trying to create rule with IP + already existing ports. [Equivalent to MX GUI "The same IP address and port combination cannot be assigned to more than one transparent reverse proxy. Please review configuration then try again."]
IMP-10017 - Service not found
IMP-10020 - Port out of range
IMP-10153 - Invalid Port when ports format is illegal (CSV is required)
IMP-10153 - Invalid listenerPortList list (not ‘,’ separated list)
IMP-10301 - SSL Certificate not found
IMP-10414 - Server SSL Negotiation Settings cannot be configured without 'Encrypt' enabled
IMP-10415 - Server Certificate must be specified when SSL Negotiation Settings are configured
IMP-12801 - Client side SSL Settings object missing from Global Object list
IMP-12802 - Server side SSL Settings object missing from Global Object list

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66803.htm)



