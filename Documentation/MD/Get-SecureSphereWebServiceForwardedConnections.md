# Get-SecureSphereWebServiceForwardedConnections

## SYNOPSIS
Returns the Forwarded Connections attributes of the Web service indicated by the path parameters siteName, serverGroupName and webServiceName.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereWebServiceForwardedConnections -SiteName <String> -ServerGroupName <String> -WebServiceName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns the Forwarded Connections attributes of the Web service indicated by the path parameters siteName, serverGroupName and webServiceName. The Forwarded Connections capability enables SecureSphere to identify the IPs behind the proxy.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereWebServiceForwardedConnections -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the web service to create.

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
This parameter specifies the name of the parent server group of the web service to create.

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
This parameter specifies the name of the web service to get.

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

### Response Body
{
"useHttpForwardingHeader": true,
"forwardedConnections": [{
"headerName": "X-Forwarded-For",
"proxyIpGroup": "Allowed IP Addresses"
}]}

## NOTES

### Error Codes
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10017 - Service not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61857.htm)



