# Get-SecureSphereAssessmentScanRunsRecords

## SYNOPSIS
Returns details of DAS assessment scan run results.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereAssessmentScanRunsRecords [-RunIds <UInt64[]>] [-ResultIds <UInt64[]>] [-EndDate <String>] [-StartDate <String>] [<CommonParameters>]
```

### Parameter Set 2
```
Get-SecureSphereAssessmentScanRunsRecords [<CommonParameters>]
```

## DESCRIPTION
Returns details of DAS assessment scan run results. Each scan result has its own set of fields. The records are the details of columns that are selected by an optional Additional Script configured for a Custom Assessment or pre-defined test. The scan run records are in a CSV stream, which concludes with the word END. The stream includes the following columns:

Result ID
1. Ordinal: An identifier used for internal purposes.
2. Column 1
3. Column 2
4. Column 3
5. Column 4
6. Column 5
7. Column 6
8. Column 7
9. Column 8
10. Column 9

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereAssessmentScanRunsRecords
```

### EXAMPLE 2

```powershell
Get-SecureSphereAssessmentScanRunsRecords -RunIds 9935168629773080343 -ResultIds 8473668629773080343 -StartDate "2014-01-01 08:00" -EndDate "2014-01-01 09:00"
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

### ResultIds
This parameter specifies result ids. Specifies result identifiers to include.

```yaml
Type: UInt64[]
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

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61707.htm)



