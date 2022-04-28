# Get-SecureSphereDBAuditPolicy

## SYNOPSIS
Returns audit policy details by policy name.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBAuditPolicy -PolicyName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns audit policy details by policy name.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBAuditPolicy -PolicyName "Login audit"
```

## PARAMETERS

### PolicyName
This parameter specifies the name of the audit policy.

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
"policy-name": "Login audit",
"policy-type": "db-service",
"apply-to": [],
...
}

## NOTES

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70911.htm)



