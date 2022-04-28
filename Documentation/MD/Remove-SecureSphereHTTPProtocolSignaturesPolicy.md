# Remove-SecureSphereHTTPProtocolSignaturesPolicy

## SYNOPSIS
Deletes the http protocol signatures policy, indicated by the path parameter: policyName.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereHTTPProtocolSignaturesPolicy -PolicyName <String> [<CommonParameters>]
```

## DESCRIPTION
Deletes the http protocol signatures policy, indicated by the path parameter: policyName.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereHTTPProtocolSignaturesPolicy -PolicyName "policy 1"
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

## NOTES

### Error Codes
IMP-10033 - Policy not found
IMP-10147 - This is a predefined ADC item that cannot be deleted
IMP-10178 - The {ENTITY_NAME} cannot be deleted since it is connected to {CONNECTED_TO}.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66858.htm)



