# New-SecureSphereDBTag

## SYNOPSIS
Creates a new tag.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereDBTag -TagName <String> [<CommonParameters>]
```

## DESCRIPTION
Creates a new tag.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereDBTag -TagName "some tag"
```

## PARAMETERS

### TagName
This parameter specifies the name of the new tag.

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
IMP-10005 - Tag name already in use

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/65841.htm)



