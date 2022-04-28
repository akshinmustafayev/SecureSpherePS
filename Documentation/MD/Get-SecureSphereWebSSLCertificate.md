# Get-SecureSphereWebSSLCertificate

## SYNOPSIS
Returns the SSL certificate with the name indicated by the path parameter sslKeyName that relates to the Web service indicated by the path parameters siteName, serverGroupName and webServiceName.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereWebSSLCertificate -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -SslKeyName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns the SSL certificate with the name indicated by the path parameter sslKeyName that relates to the Web service indicated by the path parameters siteName, serverGroupName and webServiceName.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereWebSSLCertificate -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -SslKeyName "sslKey1"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the web service.

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
This parameter specifies the name of the parent server group of the web service.

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
This parameter specifies the name of the web service.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### SslKeyName
This parameter specifies the name of the SSL Key to access.

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
"sslKeyName":"imperva-web",
"hsm":false,
"issuer":"CN=Imperva,O=Imperva INC,C=US",
"validFrom":1408357537,
"validTo":1508357537
}

## NOTES

### Error Codes
1. This feature is currently only supported with Web and SharePoint licenses.
2. Certificates must preserve valid JSON format of the surrounding content. If the certificate contains hidden characters such as hidden end of lines, they should be replaced by end of line characters (for example: \\n).
3. SecureSphere supports both base 64 and binary format.
a. PEM encoding is base 64.
b. PKCS12 encoding is a binary format.
However SecureSphere does not support binary format via the REST API. Subsequently, if your source key format is binary, you need to convert it to Base 64.

### Error Codes
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10017 - Service not found
IMP-10301 - The SSL Certificate is not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61889.htm)



