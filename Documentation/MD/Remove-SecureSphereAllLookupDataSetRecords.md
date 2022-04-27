# Remove-SecureSphereAllLookupDataSetRecords

## SYNOPSIS
Removes all existing data from a lookup data set.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereAllLookupDataSetRecords -DataSetName <String> [<CommonParameters>]
```

## DESCRIPTION
Removes all existing data from a lookup data set.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereAllLookupDataSetRecords -DataSetName "employees"
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

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

### Error Codes
IMP-10094 - No lookup data set with this name exists in the DB.
IMP-10093 - SecureSphere cannot create a file in its temporary directory.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61649.htm)



