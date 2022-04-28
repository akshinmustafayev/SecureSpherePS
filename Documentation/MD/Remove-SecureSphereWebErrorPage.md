# Remove-SecureSphereWebErrorPage

## SYNOPSIS
Delete a Web Error Page.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereWebErrorPage -WebErrorPageName <String> [<CommonParameters>]
```

## DESCRIPTION
Delete a Web Error Page.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereWebErrorPage -WebErrorPageName "some page"
```

## PARAMETERS

### WebErrorPageName
This parameter specifies the page name.

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
IMP-10178 - The Web Error Page {pageName} cannot be deleted since it is connected to Error Page Policy {policyName}.
IMP-10690 - Web Error Page "{pageName}" not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70340.htm)



