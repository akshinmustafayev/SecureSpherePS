# Remove-SecureSphereSSLSettingsGlobalObject

## SYNOPSIS
Delete an SSL Settings Global Object.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereSSLSettingsGlobalObject -SslSettingsName <String> [<CommonParameters>]
```

## DESCRIPTION
Delete an SSL Settings Global Object. SSL Settings contains the SSL/TLS stack parameters that are used by SSL/TLS RP Client (RP Inbound) or RP Server (RP Outbound) rules. This is used for URP, KRP and TRP.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereSSLSettingsGlobalObject -SslSettingsName "something"
```

## PARAMETERS

### SslSettingsName
This parameter specifies the name of SSL settings object to remove.

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

## NOTES

### Error Codes
IMP-10178 - The SSL Settings {name} cannot be deleted since it is connected to {entity}
IMP-12901 - SSL Settings Global Object not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66832.htm)



