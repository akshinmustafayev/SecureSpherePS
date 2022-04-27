# Get-SecureSphereScanResultsForDB

## SYNOPSIS
Returns results of a specific test on a database in a run of a DAS assessment scan.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereScanResultsForDB [-RunIds <UInt64[]>] [-StartDate <String>] [-EndDate <String>] [<CommonParameters>]
```

### Parameter Set 2
```
Get-SecureSphereScanResultsForDB [<CommonParameters>]
```

## DESCRIPTION
Returns results of a specific test on a database in a run of a DAS assessment scan. The scan run results are in a CSV stream, which concludes with the word END. The stream includes the following columns:

1. ID
2. Run ID
3. DB ID
4. Test ID
5. Status
6. Errors

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereScanResultsForDB
```

### EXAMPLE 2

```powershell
Get-SecureSphereScanResultsForDB -RunIds 9935168629773080343 -StartDate "2014-01-01 08:00" -EndDate "2014-01-01 09:00"
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
When creating custom assessment tests, you set a severity ranging from Low to Critical. In the SecureSphere GUI, this severity is also associated with a numeric value. However in API output, only the numeric value for this severity is displayed. The following is a mapping of the conversion between the non-numerical to numerical severity:

---------------------------------------
\|    SEVERITY    \|    NUMERIC VALUE   \|
---------------------------------------
Info             \|      0.0
Low              \|      2.5
Medium           \|       5
High             \|      7.5
Critical         \|     10.0


### Error Codes
IMP-10121 - Bad parameter
IMP-10122 - Database connection error
IMP-10125 - Error writing to file
IMP-10126 - Maximum number of open connections exceeded

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61707.htm)



