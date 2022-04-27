# Remove-SecureSphereDBTableGroup

## SYNOPSIS
Deletes Table Group item from configuration.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereDBTableGroup -TableGroup <String> [<CommonParameters>]
```

## DESCRIPTION
Deletes Table Group item from configuration.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereDBTableGroup -TableGroup "some_table_group"
```

## PARAMETERS

### TableGroup
This parameter specifies the table group name.

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
IMP-12201 - No table group with this name exists

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/65841.htm)



