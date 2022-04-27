# Invoke-SecureSphereFTL

## SYNOPSIS
Run First Time Login on the server according to given configuration. FTL will check the given parameters and will be invoked asynchronously in case it's correct.

## SYNTAX

### Parameter Set 1 (Default)
```
Invoke-SecureSphereFTL -Parameters <Array> [<CommonParameters>]
```

## DESCRIPTION
Run First Time Login on the server according to given configuration. FTL will check the given parameters and will be invoked asynchronously in case it's correct.

## EXAMPLES

### EXAMPLE 1

```powershell
$Parameters = @{
    "component"                    = "Gateway";
    "root-password"                = "SW1wZXJ2YTEyCg==";
    "secure-password"              = "SW1wZXJ2YTEyCg==";
    "imperva-password"             = "SW1wZXJ2YTEyCg==";
    "management-server-address"    = "10.1.15.150";
    "hostname"                     = "gw-hostname";
    "timezone"                     = "Asia/Jerusalem";
    "gateway-group"                = "gg_name";
    "management-address-with-cidr" = "10.100.11.64/24";
    "management-interface"         = "eth0";
    "default-gateway"              = "10.100.11.254";
    "gateway-mode"                 = "reverse-proxy-hades";
    "dns-servers"                  = @("10.1.11.110", "10.2.2.20");
    "dns-domain"                   = "imperva";
    "dns-searchlist"               = @( "imperva.com", "imperva.local");
    "ntp-address"                  = "129.250.35.251";
}

Invoke-SecureSphereFTL -Parameters $Parameters
```

## PARAMETERS

### Parameters
This parameter specifies Parameters. More about parameters https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66845.htm.

```yaml
Type: Array
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: False
Pipeline Input: False
```

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
{
"status": "Operation launched"
}

## NOTES

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66845.htm)



