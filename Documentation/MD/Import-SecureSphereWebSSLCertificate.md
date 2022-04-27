# Import-SecureSphereWebSSLCertificate

## SYNOPSIS
Uploads an SSL certificate with the name indicated by the path parameter sslKeyName that relates to the Web service indicated by the path parameters siteName, serverGroupName and webServiceName.

## SYNTAX

### Parameter Set 1 (Default)
```
Import-SecureSphereWebSSLCertificate -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -SslKeyName <String> -Format <String> [-Hsm] [-Private <String>] [-Certificate <String>] [<CommonParameters>]
```

### Parameter Set 2
```
Import-SecureSphereWebSSLCertificate -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -SslKeyName <String> -Format <String> [-Pkcs12file <String>] [-Password <String>] [<CommonParameters>]
```

## DESCRIPTION
Uploads an SSL certificate with the name indicated by the path parameter sslKeyName that relates to the Web service indicated by the path parameters siteName, serverGroupName and webServiceName.

## EXAMPLES

### EXAMPLE 1

```powershell
Import-SecureSphereWebSSLCertificate -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -SslKeyName "sslKey1" -Format "pem" -Private " -----BEGIN PRIVATE-----MIIEpAIBAAKCAQEA4mOJC0OwjvYkMfSH8…z -----END PRIVATE-----" -Certificate " -----BEGIN CERTIFICATE-----mVpSBzlDLIQHW0/Pyc3i6MB…-----END PRIVATE-----" -Hsm $false
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the web service to access.

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
This parameter specifies the name of the parent server group of the web service to access.

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
This parameter specifies the name of the web service to access.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### SslKeyName
This parameter specifies the name of the SSL Key to create.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Format
This parameter specifies the certificate format type.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Accepted Values: pem
                 pkcs12
Pipeline Input: False
```

### Hsm
This parameter specifies if to use certificate used by HSM.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Private
This parameter specifies the base64 encoded PEM certificate, enclosed between "-----BEGIN PRIVATE-----" and "-----END PRIVATE-----". Mandatory for "format" value "pem".

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Certificate
This parameter specifies the base64 encoded PEM certificate, enclosed between "-----BEGIN CERTIFICATE-----" and "-----END CERTIFICATE-----". Mandatory for "format" value "pem".

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Pkcs12file
This parameter specifies the PKCS12 file content, Base64 encoded. Mandatory for "format" value "pkcs12".

```yaml
Type: String
Parameter Sets: Parameter Set 2
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Password
This parameter specifies the PKCS12 file password. Mandatory for "format" value "pkcs12".

```yaml
Type: String
Parameter Sets: Parameter Set 2
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

### Notes on SSL Certificates
IMP-10005 - An SSL key with this name already exists - please select a different name
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10017 - Service not found
IMP-10016 - The "sslKeyName" entered is illegal
IMP-10026 - Body parameter "format" is missing
IMP-10016 - The HSM entered is illegal
IMP-10016 - The value entered for private is either missing or not encoded in Base64
IMP-10016 - The certificate entered is either missing or not encoded in Base64
IMP-10016 - The pkcs12file entered is missing, an invalid format, or not encoded in Base64
IMP-10016 - The password entered is illegal
IMP-10026 - The body parameter "private" is missing
IMP-10026 - Body parameter "certificate" is missing
IMP-10026 - Body parameter "pkcs12file" is missing
IMP-10026 - Body parameter "password" is missing
IMP-10301 - The SSL Certificate is not found
IMP-10302 - Not an HSM key. HSM flag is set but certificate is not HSM
IMP-10303 - Invalid key file. Private certificate content is invalid
IMP-10304 - Invalid certificate file. Public certificate content is invalid
IMP-10305 - Key and certificate do not match

### Notes on SSL Certificates
1. This feature is currently only supported with Web and SharePoint licenses.
2. Certificates must preserve valid JSON format of the surrounding content. If the certificate contains hidden characters such as hidden end of lines, they should be replaced by end of line characters (for example: \\n).
3. SecureSphere supports both base 64 and binary format.
a. PEM encoding is base 64.
b. PKCS12 encoding is a binary format.
However SecureSphere does not support binary format via the REST API. Subsequently, if your source key format is binary, you need to convert it to Base 64.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61889.htm)



