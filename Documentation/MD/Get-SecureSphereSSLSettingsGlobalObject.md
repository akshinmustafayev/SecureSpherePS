# Get-SecureSphereSSLSettingsGlobalObject

## SYNOPSIS
Get a single Global Object details for SSL Settings.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereSSLSettingsGlobalObject -SslSettingsName <String> [<CommonParameters>]
```

## DESCRIPTION
Get a single Global Object details for SSL Settings. SSL Settings contains the SSL/TLS stack parameters that will be used by the SSL/TLS RP Client (RP Inbound) or RP Server (RP Outbound). This is used for URP, KRP and TRP.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereSSLSettingsGlobalObject -SslSettingsName "something"
```

## PARAMETERS

### SslSettingsName
This parameter specifies the name of SSL settings object to get.

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
"sslProtocolVersions": [
"TLSv1.2",
"TLSv1.1"],
"enforceRPServerSideCipherPriority": true,
"activeCiphers": [
"TLS_RSA_WITH_AES_256_CBC_SHA",
"TLS_RSA_WITH_AES_256_GCM_SHA384",
"TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"
],
"activeEllipticCurves": [
"secp256r1",
"secp521r1"
]}

## NOTES

### Error Codes
IMP-12901 - SSL Settings Global Object not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66833.htm)



