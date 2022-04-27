# Set-SecureSphereThreatRadarEnabledParameters

## SYNOPSIS
Updates the Threat Radar enabled parameter.

## SYNTAX

### Parameter Set 1
```
Set-SecureSphereThreatRadarEnabledParameters -IsEnabled [<CommonParameters>]
```

## DESCRIPTION
Updates the Threat Radar enabled parameter.

## EXAMPLES

### EXAMPLE 1

```powershell
Set-SecureSphereThreatRadarEnabledParameters -IsEnabled $true
```

## PARAMETERS

### IsEnabled
This parameter specifies if ThreatRadar is enabled

```yaml
Type: Boolean
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
IMP-10032 - The \\"threat-radar\\" value entered is illegal

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70379.htm)



