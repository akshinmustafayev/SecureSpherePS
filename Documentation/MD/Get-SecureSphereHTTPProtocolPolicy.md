# Get-SecureSphereHTTPProtocolPolicy

## SYNOPSIS
Retrieves the HTTP protocol policy, indicated by the path parameter: policyName.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereHTTPProtocolPolicy -PolicyName <String> [<CommonParameters>]
```

## DESCRIPTION
Retrieves the HTTP protocol policy, indicated by the path parameter: policyName.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereHTTPProtocolPolicy -PolicyName "policy 1"
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

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70357.htm)



