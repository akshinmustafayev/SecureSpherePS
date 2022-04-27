# Invoke-SecureSphereIncrementalOperationsOnLookupDataSet

## SYNOPSIS
Performs an incremental operation (add/delete rows) on a lookup data set.

## SYNTAX

### Parameter Set 1 (Default)
```
Invoke-SecureSphereIncrementalOperationsOnLookupDataSet -DataSetName <String> [-Overwrite] -Data <Array> [<CommonParameters>]
```

### Parameter Set 2
```
Invoke-SecureSphereIncrementalOperationsOnLookupDataSet [-DataSetName <String>] [-Data <Array>] [<CommonParameters>]
```

## DESCRIPTION
Performs an incremental operation (add/delete rows) on a lookup data set. The delete operation requires only the key column of the lookup data set.

## EXAMPLES

### EXAMPLE 1

```powershell
$Data = @{
    "action"  = "add";
    "records" = @(
        @{
            "Key"    = "351"; 
            "User"   = "Jack Norton"; 
            "Groups" = @(
                "R&D", 
                "Finance", 
                "Supervisors"
            )
        },
        @{
            "Key"    = "572"; 
            "User"   = "John Doe"; 
            "Groups" = "Admin";
        },
        @{
            "Key"    = "633"; 
            "User"   = "Michael Jenkins"; 
            "Groups" = "Maintenance"
        }
    )
}

Invoke-SecureSphereIncrementalOperationsOnLookupDataSet -DataSetName "employees" -Overwrite $false -Data $Data
```

### EXAMPLE 2

```powershell
$Data = @{
    "action"  = "add";
    "records" = @(
        @{
            "Key"    = "351"; 
            "User"   = "Jack Norton"; 
            "Groups" = @(
                "R&D", 
                "Finance", 
                "Supervisors"
            )
        },
        @{
            "Key"    = "572"; 
            "User"   = "John Doe"; 
            "Groups" = "Admin";
        },
        @{
            "Key"    = "633"; 
            "User"   = "Michael Jenkins"; 
            "Groups" = "Maintenance"
        }
    )
}

Invoke-SecureSphereIncrementalOperationsOnLookupDataSet -DataSetName "employees" -Data $Data
```

## PARAMETERS

### DataSetName
This parameter specifies the name of the lookup data set.

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
When adding data to a data set that has existing data, indicates whether to overwrite the existing data. Default value=true. If the value=false, the new data is ignored.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Data
This parameter specifies the data.

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
IMP-10094 - No lookup data set with this name exists in the DB.
IMP-10093 - SecureSphere cannot create a file in its temporary directory.
IMP-10095 - The lookup data set data provided by the user contains a non-existing column name.
IMP-10096 - The lookup data set data provided by the user is missing the key column.
IMP-10097 - The lookup data set data provided by the user contains two or more identical key column values.
IMP-10098 - The lookup data set data provided by the user contains more than one value under a single key column.
IMP-10099 - The key to delete does not exist.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61648.htm)



