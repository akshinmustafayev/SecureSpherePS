# Start-SecureSphereDBTableGroupIncrementalOperations

## SYNOPSIS
Performs an incremental operation (add/delete tables) on a table group.

## SYNTAX

### Parameter Set 1 (Default)
```
Start-SecureSphereDBTableGroupIncrementalOperations -TableGroupName <String> [-Overwrite] -Records <Array> [<CommonParameters>]
```

### Parameter Set 2
```
Start-SecureSphereDBTableGroupIncrementalOperations [-TableGroupName <String>] [-Records <Array>] [<CommonParameters>]
```

## DESCRIPTION
Performs an incremental operation (add/delete tables) on a table group. The delete operation requires only the table name.
In the add operation:
When new entry is added, if Type is not specified, the default is "Table".
When entry is overwritten, if Type is not specified, it is not changed.
Table name is a must, otherwise an error will be issued.
If overwrite is true, columns will be overwritten with the received values. E.g. if empty columns are provided, all columns are removed from a table.
Columns are optional.

## EXAMPLES

### EXAMPLE 1

```powershell
$Records = @(
    @{
        "action"  = "add";
        "records" = @(
            @{
                "Name"    = "table1";
                "Type"    = "Table";
                "Columns" = @(
                    "col1", "col2"
                )
            },
            @{
                "Name" = "table2"
            }
        )
    },
    @{
        "action"  = "delete";
        "records" = @(
            @{"Name" = "table1"; }
        )
    }
)

Start-SecureSphereDBTableGroupIncrementalOperations -TableGroupName "my_table_group" -Overwrite $false -Records $Records
```

### EXAMPLE 2

```powershell
$Records = @(
    @{
        "action"  = "add";
        "records" = @(
            @{
                "Name"    = "table1";
                "Type"    = "Table";
                "Columns" = @(
                    "col1", "col2"
                )
            },
            @{
                "Name" = "table2"
            }
        )
    },
    @{
        "action"  = "delete";
        "records" = @(
            @{"Name" = "table1"; }
        )
    }
)

Start-SecureSphereDBTableGroupIncrementalOperations -TableGroupName "my_table_group" -Records $Records
```

## PARAMETERS

### TableGroupName
This parameter specifies the name of the table group.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Overwrite
When adding data to a table group that has existing data, indicates whether to overwrite the existing data. Default value=true. If the value=false, the new data is ignored.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Records
This parameter specifies data to perform operations.

```yaml
Type: Array
Parameter Sets: (All)
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
IMP-12207 - The table to delete does not exist
IMP-10021 - The number of records has passed the allowed limit – 50K (up to 11.5, may be subject to change in the future)
IMP-10087 - SecureSphere cannot create a file in its temporary directory

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61941.htm)



