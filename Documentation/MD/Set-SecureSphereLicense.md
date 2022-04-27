# Set-SecureSphereLicense

## SYNOPSIS
Upload a license file to the system.

## SYNTAX

### Parameter Set 1 (Default)
```
Set-SecureSphereLicense -License <String> [<CommonParameters>]
```

## DESCRIPTION
Upload a license file to the system. The license file is loaded in the body content. The license file content needs to be encoded in Base 64.

## EXAMPLES

### EXAMPLE 1

```powershell
Set-SecureSphereLicense -License "aXhhb…XBsZQ=="
```

## PARAMETERS

### License
This parameter specifies the content of license file to load (Base 64 encoded).

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
IMP-10056 - Body parameter \\"licenseContent\\" is missing
IMP-12101 - Invalid license file
IMP-12102 - License file is not valid for the current management server.
IMP-12103 - License file is not valid for current product or appliance.
IMP-12104 - License has expired.
IMP-12105 - Insufficient permissions to load license file.
IMP-12107 - Duplicate license file loaded.
IMP-12108 - Time-based license expiry date is later than perpetual license.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61618.htm)



