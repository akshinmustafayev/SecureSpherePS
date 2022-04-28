# Edit-SecureSphereSSLSettingsGlobalObject

## SYNOPSIS
Update SSL Settings Global Object.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereSSLSettingsGlobalObject -SslSettingsName <String> -SslProtocolVersions <String[]> [-EnforceRPServerSideCipherPriority] -ActiveCiphers <String[]> [-ActiveEllipticCurves <String[]>] [<CommonParameters>]
```

### Parameter Set 2
```
Edit-SecureSphereSSLSettingsGlobalObject [-SslSettingsName <String>] [-SslProtocolVersions <String[]>] [-ActiveCiphers <String[]>] [-ActiveEllipticCurves <String[]>] [<CommonParameters>]
```

### Parameter Set 3
```
Edit-SecureSphereSSLSettingsGlobalObject [-SslSettingsName <String>] [-SslProtocolVersions <String[]>] [-ActiveCiphers <String[]>] [-EnforceRPServerSideCipherPriority] [<CommonParameters>]
```

## DESCRIPTION
Update SSL Settings Global Object. SSL Settings contains the SSL/TLS stack parameters that will be use by the SSL/TLS RP Client (RP Inbound) or RP Server (RP Outbound). This is use for URP, KRP and TRP. If no object is assigned to the RP rules, the default GW defined settings will be used.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereSSLSettingsGlobalObject -SslSettingsName "something" -SslProtocolVersions "TLSv1.2", "TLSv1.1" -EnforceRPServerSideCipherPriority $true -ActiveCiphers "TLS_RSA_WITH_AES_256_CBC_SHA", "TLS_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384" -ActiveEllipticCurves "secp256r1", "secp521r1"
```

## PARAMETERS

### SslSettingsName
This parameter specifies the name of SSL settings object to create.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### SslProtocolVersions
This parameter specifies the supported TLS versions.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Accepted Values: TLSv1
                 TLSv1.1
                 TLSv1.2
Pipeline Input: False
```

### EnforceRPServerSideCipherPriority
Enforce RP server side cipher and Elliptic Curves priority according to the active ciphers list and Elliptic Curves list order. Default is false if not specified.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1, Parameter Set 3
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ActiveCiphers
This parameter specifies the active ciphers list, order set priority.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Accepted Values: TLS_RSA_WITH_AES_256_CBC_SHA
                 TLS_DHE_RSA_WITH_AES_256_CBC_SHA
                 TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA
                 TLS_RSA_WITH_AES_128_CBC_SHA
                 TLS_DHE_RSA_WITH_AES_128_CBC_SHA
                 TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA
                 TLS_RSA_WITH_AES_256_CBC_SHA256
                 TLS_DHE_RSA_WITH_AES_256_CBC_SHA256
                 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
                 TLS_RSA_WITH_AES_128_CBC_SHA256
                 TLS_DHE_RSA_WITH_AES_128_CBC_SHA256
                 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
                 TLS_RSA_WITH_AES_128_GCM_SHA256
                 TLS_DHE_RSA_WITH_AES_128_GCM_SHA256
                 TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA
                 TLS_RSA_WITH_AES_256_GCM_SHA384
                 TLS_DHE_RSA_WITH_AES_256_GCM_SHA384
                 TLS_RSA_WITH_3DES_EDE_CBC_SHA
Pipeline Input: False
```

### ActiveEllipticCurves
This parameter specifies the active Elliptic Curves list, order sets priority.

```yaml
Type: String[]
Parameter Sets: Parameter Set 1, Parameter Set 2
Aliases: none

Required: false
Position: named
Default Value: None
Accepted Values: secp192r1
                 secp224r1
                 secp256r1
                 secp384r1
                 secp521r1
Pipeline Input: False
```

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

### Error Codes
IMP-12901 - SSL Settings Global Object not found
IMP-12902 - Wrong or non-existing cipher suite name(s) : {0}
IMP-12903 - Wrong or non-existing elliptic curve name(s) : {0}
IMP-12904 - Wrong or non-existing SSL protocol version name(s) : {0}
IMP-12905 - At least one SSL protocol must be selected
IMP-12906 - At least one elliptic curve must be selected when using an ECDHE cipher
IMP-12907 - No supporting cipher for protocol(s): {0}."
IMP-12909 - No supported protocol for active cipher(s): {0}

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66831.htm)



