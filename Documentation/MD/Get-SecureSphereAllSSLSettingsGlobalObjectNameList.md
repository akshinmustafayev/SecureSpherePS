# Get-SecureSphereAllSSLSettingsGlobalObjectNameList

## SYNOPSIS
Get the list of all Global Object names for SSL Settings.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereAllSSLSettingsGlobalObjectNameList [<CommonParameters>]
```

## DESCRIPTION
Get the list of all Global Object names for SSL Settings. SSL Settings contains the SSL/TLS stack parameters that are be used by the SSL/TLS RP Client (RP Inbound) or RP Server (RP Outbound). This is applicable for URP, KRP and TRP.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereAllSSLSettingsGlobalObjectNameList
```

## PARAMETERS

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
{
"sslSettingsName": [
"A+ RP Client Side SSL Settings",
"A+ RP Server Side SSL Settings",
"High Performance RP Client Side SSL Settings",
"High Performance RP Server Side SSL Settings",
"High Security RP Client Side SSL Settings",
"High Security RP Server Side SSL Settings",
"my SSL settings"
]}

## NOTES

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66834.htm)



