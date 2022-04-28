# Edit-SecureSphereLookupDataSetRecords

## SYNOPSIS
Replaces data in a lookup data set with new data and deletes all of the previous data.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereLookupDataSetRecords -DataSetName <String> -Records <Array> [<CommonParameters>]
```

## DESCRIPTION
Replaces data in a lookup data set with new data and deletes all of the previous data.

## EXAMPLES

### EXAMPLE 1

```powershell
$Records = @{
    "records" = @(
        @{
            "Key"    = "351";
            "User"   = "Jack Norton";
            "Groups" = @(
                "R&D", 
                "Finance", 
                "Supervisors"
            );
        },
        @{
            "Key"    = "572";
            "User"   = "John Doe";
            "Groups" = "Admin";
        },
        @{
            "Key"    = "633";
            "User"   = "Michael Jenkins";
            "Groups" = "Maintenance";
        }
    )
}

Edit-SecureSphereLookupDataSetRecords -DataSetName "employees" -Records $Records
```

## PARAMETERS

### DataSetName
This parameter specifies the name of the lookup data set.

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
This parameter specifies records.

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
IMP-10094 - No lookup data set with this name exists in the DB.
IMP-10093 - SecureSphere cannot create a file in its temporary directory.
IMP-10095 - The lookup data set data provided by the user contains a non-existing column name.
IMP-10096 - The lookup data set data provided by the user is missing the key column.
IMP-10097 - The lookup data set data provided by the user contains two or more identical key column values.
IMP-10098 - The lookup data set data provided by the user contains more than one value under a single key column.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61647.htm)



