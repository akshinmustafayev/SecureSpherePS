# Edit-SecureSphereDBTag

## SYNOPSIS
Renames a tag.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereDBTag -TagName <String> -NewTagName <String> [<CommonParameters>]
```

## DESCRIPTION
Renames a tag.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereDBTag -TagName "some tag" -NewTagName "SqlServerAgents"
```

## PARAMETERS

### TagName
This parameter specifies the name of the tag to rename.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### NewTagName
This parameter specifies the new name of the tag.

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
IMP-10082 - Tag to rename not found
IMP-10005 - New tag name already in use
IMP-10042 - Permission denied to update the tag or one of the tagged entities
IMP-10071 - New tag name is missing

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/65841.htm)



