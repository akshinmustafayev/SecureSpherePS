# Remove-SecureSphereWebErrorPagePolicy

## SYNOPSIS
Delete a Web Error Page Policy.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereWebErrorPagePolicy -WebErrorPagePolicyName <String> [<CommonParameters>]
```

## DESCRIPTION
Delete a Web Error Page Policy.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereWebErrorPagePolicy -WebErrorPagePolicyName "some error page policy"
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

## NOTES

### Error Codes
IMP-10680 - Web Error Page Policy "{policyName}" not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70345.htm)



