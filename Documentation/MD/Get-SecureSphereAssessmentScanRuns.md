# Get-SecureSphereAssessmentScanRuns

## SYNOPSIS
Returns an overview of DAS assessment scan runs.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereAssessmentScanRuns [-Scans <String[]>] [-StartDate <String>] [-EndDate <String>] [<CommonParameters>]
```

### Parameter Set 2
```
Get-SecureSphereAssessmentScanRuns [<CommonParameters>]
```

## DESCRIPTION
Returns an overview of DAS assessment scan runs. Assessment scans are run in the SecureSphere GUI. A scan can be scheduled or run immediately, and can be repeated multiple times. The method collects information for each scan that runs. The scan run data is in a CSV stream, which concludes with the word END. The stream includes the following columns:
1. ID
2. Scan ID
3. Start Time
4. End Time
5. Status
6. Passed and Info
7. Failed
8. Error: Displayed if target server doesn’t have an OS configured and the OS Type of the test is not "Any."
9. Irrelevant: Results if OS Type of the test doesn’t match OS of the target server.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereAssessmentTests
```

### EXAMPLE 2

```powershell
Get-SecureSphereAssessmentTests -Scans "scan1" -StartDate "2014-01-01 08:00" -EndDate "2014-01-01 09:00"
```

## PARAMETERS

### Scans
This parameter specifies scan names. Only runs that match the specified scan names are included.

```yaml
Type: String[]
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

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61719.htm)



