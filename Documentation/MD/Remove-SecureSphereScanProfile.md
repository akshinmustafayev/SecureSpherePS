# Remove-SecureSphereScanProfile

## SYNOPSIS
This method deletes a given scan profile.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereScanProfile [-ProfileName <String>] [<CommonParameters>]
```

## DESCRIPTION
This method deletes a given scan profile.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereScanProfile -ProfileName "some profile"
```

## PARAMETERS

### ProfileName
This parameter specifies profile name.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
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
IMP-14008 - Profile name not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70890.htm)



