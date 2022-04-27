# Remove-SecureSphereWebTransparentReverseProxyRule

## SYNOPSIS
Delete a Transparent Reverse Proxy rule, a decision rule which defines how to handle incoming Web traffic, indicated by the path parameters serverIp and listenerPort, for the given Web service indicated by the path parameters siteName, serverGroupName and webServiceName.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereWebTransparentReverseProxyRule -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -ServerIPAddress <String> -ListenerPortList <String> [<CommonParameters>]
```

## DESCRIPTION
Delete a Transparent Reverse Proxy rule, a decision rule which defines how to handle incoming Web traffic, indicated by the path parameters serverIp and listenerPort, for the given Web service indicated by the path parameters siteName, serverGroupName and webServiceName.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereWebTransparentReverseProxyRule -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -ServerIPAddress "10.1.1.2" -ListenerPortList 80
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the web application.

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
This parameter specifies the name of the parent server group of the web application.

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
This parameter specifies the name of the parent service of the web application.

```yaml
Type: String
Parameter Sets: Parameter Set 1
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
Parameter Sets: Parameter Set 1
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
IMP-10010 - Invalid IP address. Please enter a valid IP address, then try again
IMP-10011 - Protected IP not found
IMP-10017 - Service not found
IMP-10901 - Transparent Reverse Proxy rule not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66805.htm)



