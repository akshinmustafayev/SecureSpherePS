# Get-SecureSphereDBSecurityPolicy

## SYNOPSIS
Returns the details of a DB security policy.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBSecurityPolicy -PolicyName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns the details of a DB security policy.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBSecurityPolicy -PolicyName "Policy1"
```

## PARAMETERS

### PolicyName
This parameter specifies the name of the policy

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
"severity": "NoAlert",
"enabled": true,
"policy-name": "Policy1",
"policy-type": "db-service-custom",
"apply-to":
[
"Default Site/SG1/Ora1"
],
"match-criteria":
[{
"type": "simple",
"name": "Event Type",
"operation": "Equals",
"values":
[{
"value": "Login"
}],"handle-unknown-values": false
}],
"automatic-apply": "True",
"followed-action": "Long User Block"
}

## NOTES

### Error Codes
IMP-14013 - Policy not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61688.htm)



