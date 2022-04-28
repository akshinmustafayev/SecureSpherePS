# Get-SecureSphereRunFieldNames

## SYNOPSIS
Returns names of metadata fields included in DAS assessment scan runs.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereRunFieldNames [-RunIds <UInt64[]>] [-StartDate <String>] [-EndDate <String>] [<CommonParameters>]
```

### Parameter Set 2
```
Get-SecureSphereRunFieldNames [<CommonParameters>]
```

## DESCRIPTION
Returns names of metadata fields included in DAS assessment scan runs. Each scan result has its own set of fields. The field names are columns that are selected by an optional Additional Script configured for a Custom Assessment or pre-defined test. The field names are in a CSV stream, which concludes with the word END. The stream includes the following columns:

Result ID
1. Column Name 1
2. Column Name 2
3. Column Name 3
4. Column Name 4
5. Column Name 5
6. Column Name 6
7. Column Name 7
8. Column Name 8
9. Column Name 9

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereRunFieldNames
```

### EXAMPLE 2

```powershell
Get-SecureSphereRunFieldNames -RunIds 9935168629773080343 -StartDate "2014-01-01 08:00" -EndDate "2014-01-01 09:00"
```

## PARAMETERS

### RunIds
This parameter specifies run ids. Specifies scan run identifiers to include.

```yaml
Type: UInt64[]
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### StartDate
This parameter specifies the beginning of the time range of scan runs to include. Use timestamps with local database time in the yyyy-mm-dd hh:mm format.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### EndDate
This parameter specifies the end of the time range of scan runs to include. Use timestamps with local database time in the yyyy-mm-dd hh:mm format.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
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
IMP-10121 - Bad parameter
IMP-10122 - Database connection error
IMP-10125 - Error writing to file
IMP-10126 - Maximum number of open connections exceeded

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61708.htm)



