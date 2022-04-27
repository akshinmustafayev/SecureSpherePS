# Edit-SecureSphereWebServiceReportForwardedClientIPInReverseProxy

## SYNOPSIS
Updates the attributes of the Web service Reverse Proxy indicated by the path parameters siteName, serverGroupName and serviceName. The Web service attributes that can be updated are listed below.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereWebServiceReportForwardedClientIPInReverseProxy -SiteName <String> -ServerGroupName <String> -WebServiceName <String> [-ForwardClientIP] [-ForwardHeaderName <String>] [<CommonParameters>]
```

### Parameter Set 2
```
Edit-SecureSphereWebServiceReportForwardedClientIPInReverseProxy -SiteName <String> -ServerGroupName <String> -WebServiceName <String> [-ForwardClientIP] [<CommonParameters>]
```

### Parameter Set 3
```
Edit-SecureSphereWebServiceReportForwardedClientIPInReverseProxy -SiteName <String> -ServerGroupName <String> -WebServiceName <String> [-ForwardHeaderName <String>] [<CommonParameters>]
```

## DESCRIPTION
Updates the attributes of the Web service Reverse Proxy indicated by the path parameters siteName, serverGroupName and serviceName. The Web service attributes that can be updated are listed below. When enabled, traffic forwarded to the Web server includes the client IP address in the header specified in Header Name. If not selected, the Web server sees this Reverse Proxy as the client.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereWebServiceReportForwardedClientIPInReverseProxy -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -ForwardClientIP $true -ForwardHeaderName "X-Forwarded-For"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the web service to update.

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
This parameter specifies the name of the parent server group of the web service to update.

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
This parameter specifies the name of the web service to update.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ForwardClientIP
This parameter indicates if the reverse proxy forwards the original IP address in the header defined by the forwardHeaderName parameter.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1, Parameter Set 2
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ForwardHeaderName
This parameter specifies the header name that includes the original IP address of the client.

```yaml
Type: String
Parameter Sets: Parameter Set 1, Parameter Set 3
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

### Response Body
{
"forwardClientIP": true,
"forwardHeaderName": "X-Forwarded-For"
}

## NOTES

### Error Codes
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10016 - The "value" entered is illegal
IMP-10017 - Service not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61859.htm)



