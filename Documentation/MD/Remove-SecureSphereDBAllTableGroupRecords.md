# Remove-SecureSphereDBAllTableGroupRecords

## SYNOPSIS
Removes all existing data from a table group, leaving the table group empty.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereDBAllTableGroupRecords -TableGroupName <String> [<CommonParameters>]
```

## DESCRIPTION
Removes all existing data from a table group, leaving the table group empty.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereDBAllTableGroupRecords -TableGroupName "my_table_group"
```

## PARAMETERS

### TableGroupName
This parameter specifies the name of the table group.

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
IMP-12201 - No table group with this name exists in the DB
IMP-10087 - SecureSphere cannot create a file in its temporary directory

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61942.htm)



