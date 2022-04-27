# Remove-SecureSphereDBTag

## SYNOPSIS
Deletes a tag or removes a tag from all entities.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereDBTag -TagName <String> [<CommonParameters>]
```

## DESCRIPTION
Deletes a tag or removes a tag from all entities.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereDBTag -TagName "some tag"
```

## PARAMETERS

### TagName
This parameter specifies the name of the tag to remove.

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
IMP-10082 - Tag not found
IMP-10083 - Tag in use and can't be deleted
IMP-10042 - Permission denied to update the tag or one of the tagged entities

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61678.htm)



