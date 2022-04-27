﻿# Get-SecureSphereWebServiceCustomPolicy

## SYNOPSIS
Returns a Web Service Custom Policy indicated by the path parameter policyName.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereWebServiceCustomPolicy -PolicyName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a Web Service Custom Policy indicated by the path parameter policyName.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereWebServiceCustomPolicy -PolicyName "policy 1"
```

## PARAMETERS

### PolicyName
This parameter specifies the name of the policy.

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
...
}

## NOTES

### Error Codes
IMP-10033 - Policy not found
IMP-10090 - Unsupported item type Policy with unsupported match criteria

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61863.htm)


