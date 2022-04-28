# Remove-SecureSphereSite

## SYNOPSIS
Deletes site indicated by the path parameter siteName

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereSite -SiteName <String> [<CommonParameters>]
```

## DESCRIPTION
Deletes site indicated by the path parameter siteName

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereSite -SiteName "Denver"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the site to delete.

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
IMP-10006 - Site not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61623.htm)



