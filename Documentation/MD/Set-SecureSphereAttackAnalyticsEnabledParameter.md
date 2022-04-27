# Set-SecureSphereAttackAnalyticsEnabledParameter

## SYNOPSIS
Updates the Attack Analytics enabled parameter.

## SYNTAX

### Parameter Set 1
```
Set-SecureSphereAttackAnalyticsEnabledParameter -IsEnabled [<CommonParameters>]
```

## DESCRIPTION
Updates the Attack Analytics enabled parameter.

## EXAMPLES

### EXAMPLE 1

```powershell
Set-SecureSphereAttackAnalyticsEnabledParameter -IsEnabled $true
```

## PARAMETERS

### IsEnabled
This parameter specifies if Attack Analytics is enabled.

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

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70383.htm)



