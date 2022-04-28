# Get-SecureSphereWebErrorPagePolicy

## SYNOPSIS
Get a list of the rules in the requested Web Error Page Policy.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereWebErrorPagePolicy -WebErrorPagePolicyName <String> [<CommonParameters>]
```

## DESCRIPTION
Get a list of the rules in the requested Web Error Page Policy.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereWebErrorPagePolicy -WebErrorPagePolicyName "some error page policy"
```

## PARAMETERS

### WebErrorPagePolicyName
This parameter specifies the policy name.

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
Content.

## NOTES

### Error Codes
IMP-10601 - Web Error Page Policy "{policyName}" not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70347.htm)



