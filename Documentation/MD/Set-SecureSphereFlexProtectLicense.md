# Set-SecureSphereFlexProtectLicense

## SYNOPSIS
Upload a FlexProtect license code to the system.

## SYNTAX

### Parameter Set 1 (Default)
```
Set-SecureSphereFlexProtectLicense -License <String> [<CommonParameters>]
```

## DESCRIPTION
Upload a FlexProtect license code to the system. The code is loaded in the body content.

## EXAMPLES

### EXAMPLE 1

```powershell
Set-SecureSphereLicense -License "8522D6A3-C4E1-3611-Z2F9-951C70571FE0"
```

## PARAMETERS

### License
This parameter specifies the FlexProtect code.

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
IMP-12151 - Invalid FlexProtect code
IMP-12152 - Unable to contact Imperva Cloud
IMP-12153 - Cannot register FlexProtect on SOM deployment
IMP-12154 - Insufficient permissions to load FlexProtect license code
IMP-12155 - An error occurred during the ADC upload stage of the FlexProtect license upload
IMP-12157 - Internal Error
IMP-12158 - Expired FlexProtect code
IMP-12159 - FlexProtect is disabled
IMP-12160 - Non-WAF license products are present
IMP-12161 - Failed to upload FlexProtect license code

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69346.htm)



