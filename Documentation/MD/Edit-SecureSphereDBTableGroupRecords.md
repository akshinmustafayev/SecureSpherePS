# Edit-SecureSphereDBTableGroupRecords

## SYNOPSIS
Replaces data in a table group with new data and deletes all of the previous data.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereDBTableGroupRecords -TableGroupName <String> -Records <Array> [<CommonParameters>]
```

## DESCRIPTION
Replaces data in a table group with new data and deletes all of the previous data.

## EXAMPLES

### EXAMPLE 1

```powershell
$Records = @{
    "records" = @(
        @{
            "Name"    = "table1";
            "Type"    = "Table";
            "Columns" = @(
                "col1",
                "col2"
            );
        },
        @{
            "Name" = "table2"
        }
    )
}

Edit-SecureSphereDBTableGroupRecords -TableGroupName "my_table_group" -Records $Records
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

### Records
This parameter specifies new data to insert into the table group.

```yaml
Type: Array
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
IMP-12202 - The table group set data provided by the user contains a non-existing property name (not one of "Name", "Type" or "Columns")
IMP-12203 - The table group data provided by the user is missing the table name column
IMP-12204 - The table group data provided by the user contains two or more identical table name values
IMP-12205 - The table group data provided by the user contains more than one value for a table name
IMP-12206 - The table group data provided by the user contains an invalid table type
IMP-10021 - The number of records has passed the allowed limit – 50K (up to 11.5, may be subject to change in the future)
IMP-10087 - SecureSphere cannot create a file in its temporary directory

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61940.htm)



