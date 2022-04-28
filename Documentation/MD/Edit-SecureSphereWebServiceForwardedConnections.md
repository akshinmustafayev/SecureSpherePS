# Edit-SecureSphereWebServiceForwardedConnections

## SYNOPSIS
Update the Forwarded Connections attributes of the Web service indicated by the path parameters siteName, serverGroupName and webServiceName. The Forwarded Connections capability enables SecureSphere to identify the IPs behind the proxy.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereWebServiceForwardedConnections -SiteName <String> -ServerGroupName <String> -WebServiceName <String> [-UseHttpForwardingHeader] [-ForwardedConnections <WebServiceForwardedConnection[]>] [<CommonParameters>]
```

### Parameter Set 2
```
Edit-SecureSphereWebServiceForwardedConnections -SiteName <String> -ServerGroupName <String> -WebServiceName <String> [-UseHttpForwardingHeader] [-ForwardedConnections <WebServiceForwardedConnection[]>] [<CommonParameters>]
```

### Parameter Set 3
```
Edit-SecureSphereWebServiceForwardedConnections -SiteName <String> -ServerGroupName <String> -WebServiceName <String> [-ForwardedConnection <WebServiceForwardedConnection>] [<CommonParameters>]
```

### Parameter Set 4
```
Edit-SecureSphereWebServiceForwardedConnections -SiteName <String> -ServerGroupName <String> -WebServiceName <String> [-ForwardedConnections <WebServiceForwardedConnection[]>] [<CommonParameters>]
```

## DESCRIPTION
Update the Forwarded Connections attributes of the Web service indicated by the path parameters siteName, serverGroupName and webServiceName. The Forwarded Connections capability enables SecureSphere to identify the IPs behind the proxy.

## EXAMPLES

### EXAMPLE 1

```powershell
$WebServiceForwardedConnection = [WebServiceForwardedConnection]::new()
$WebServiceForwardedConnection.Operation = "Add"
$WebServiceForwardedConnection.HeaderName = "X-Forwarded-For"
$WebServiceForwardedConnection.ProxyIpGroup = "Allowed IP Addresses"

Edit-SecureSphereWebServiceForwardedConnections -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -UseHttpForwardingHeader $true -ForwardedConnection $WebServiceForwardedConnection
```

### EXAMPLE 2

```powershell
$WebServiceForwardedConnection1 = [WebServiceForwardedConnection]::new()
$WebServiceForwardedConnection1.Operation = "Add"
$WebServiceForwardedConnection1.HeaderName = "X-Forwarded-For"
$WebServiceForwardedConnection1.ProxyIpGroup = "Allowed IP Addresses"

$WebServiceForwardedConnection2 = [WebServiceForwardedConnection]::new()
$WebServiceForwardedConnection2.Operation = "Add"
$WebServiceForwardedConnection2.HeaderName = "AnyXFF"
$WebServiceForwardedConnection2.ProxyIpGroup = ""

[WebServiceForwardedConnection[]] $WebServiceForwardedConnectionList = @($WebServiceForwardedConnection1, $WebServiceForwardedConnection2)

Edit-SecureSphereWebServiceForwardedConnections -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -UseHttpForwardingHeader $true -ForwardedConnections $WebServiceForwardedConnectionList
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the web service to edit.

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
This parameter specifies the name of the parent server group of the web service to edit.

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
This parameter specifies the name of the web service to edit.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### UseHttpForwardingHeader
This parameter indicates if the gateway should identify the real client IP according to the HTTP forwarding header (XFF) in the header defined by the forwardHeaderName parameter.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1, Parameter Set 2
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ForwardedConnection
This parameter specifies the new web service ports list. Default set to 80.

```yaml
Type: WebServiceForwardedConnection
Parameter Sets: Parameter Set 3
Aliases: none

Required: false
Position: named
Default Value: 80
Accepted Values: 0-65535
Pipeline Input: False
```

### ForwardedConnections
This parameter specifies the application that new service is mapped to by default.

```yaml
Type: WebServiceForwardedConnection[]
Parameter Sets: Parameter Set 1, Parameter Set 2, Parameter Set 4
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
WebServiceForwardedConnection
1. Operation - String type. Required. Allowed values: "add" or "remove".
2. HeaderName - String type. Required. Name of the forwarding header.
3. ProxyIpGroup - String type. Required. Name of the IP Group of proxies.

Example:
$WebServiceForwardedConnection = [WebServiceForwardedConnection]::new()
$WebServiceForwardedConnection.Operation = "Add"
$WebServiceForwardedConnection.HeaderName = "X-Forwarded-For"
$WebServiceForwardedConnection.ProxyIpGroup = "Allowed IP Addresses"

### Error Codes
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10015 - Cannot create \\" location \\" since the body parameter \\" paramName \\" is missing
IMP-10016 - The "value" entered is illegal
IMP-10017 - Web service not found
IMP-10601 - IP group name not found
IMP-10603 - Forwarded Connection not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61857.htm)



