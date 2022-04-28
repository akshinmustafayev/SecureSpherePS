# Install-SecureSphere

## SYNOPSIS
Deploy SecureSphere with the specified parameters.

## SYNTAX

### Parameter Set 1 (Default)
```
Install-SecureSphere -Login <String> -Password <String> -Configuration <Array> [<CommonParameters>]
```

## DESCRIPTION
Deploy SecureSphere with the specified parameters.

## EXAMPLES

### EXAMPLE 1

```powershell
$Configuration = @{
    "domainNameMx"               = "imperva.local";
    "domainSearchListMx"         = @("none");
    "nameServersMx"              = @("10.2.16.66");
    "hostNameMx"                 = "karinos";
    "ntpServerNameMx"            = "10.2.16.66";
    "timeZoneMx"                 = "Asia/Jerusalem";
    "defaultOperationMode"       = "simulation";
    "gatewayList"                = @("10.100.53.69");
    "passwordRootUser"           = "ImpvWAF123";
    "passwordSystemUser"         = "ImpvWAF123";
    "licenseContent"             = " FYzIC0tIA==";
    "passwordSecureUser"         = "ImpvWAF123";
    "passwordAdminUser"          = "ImpvWAF123";
    "gatewayGroupMode"           = "bridge";
    "protectedHttpPlainPortList" = @("80", "81");
    "protectedHttpSslPortList"   = @("443", "444");
    "protectedIpList"            = @("1.2.3.4", "4.5.6.7");
}

Install-SecureSphere -Login "admin" -Password "some_passw" -Configuration $Configuration
```

## PARAMETERS

### Login
This parameter specifies Login.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: False
Pipeline Input: False
```

### Password
This parameter specifies Password.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Configuration
This parameter specifies configuration.

```yaml
Type: Array
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
IMP-10010 - Invalid IP address. Please enter a valid IP address, then try again.
IMP-10016 - The "{paramName}" entered is illegal
IMP-12001 - Password format is invalid for body parameter "{paramName}".

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66843.htm)



