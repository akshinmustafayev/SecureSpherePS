# Get-SecureSphereRunTargetDatabaseDetails

## SYNOPSIS
Returns details of each database on which DAS assessment scans are run.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereRunTargetDatabaseDetails [-RunIds <UInt64[]>] [-StartDate <String>] [-EndDate <String>] [<CommonParameters>]
```

### Parameter Set 2
```
Get-SecureSphereRunTargetDatabaseDetails [<CommonParameters>]
```

## DESCRIPTION
Returns details of each database on which DAS assessment scans are run. The details are in a CSV stream, which concludes with the word END. The stream includes the following columns:
1. Database ID
2. Host Name
3. IP
4. Port
5. Database Name
6. User Name
7. Alias
8. Service
9. Database Owner
10. Server Group
11. Site

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereRunTargetDatabaseDetails
```

### EXAMPLE 2

```powershell
Get-SecureSphereRunTargetDatabaseDetails -RunIds 8335168629773080553 -StartDate "2014-01-01 08:00" -EndDate "2014-01-01 09:00"
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

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61707.htm)



