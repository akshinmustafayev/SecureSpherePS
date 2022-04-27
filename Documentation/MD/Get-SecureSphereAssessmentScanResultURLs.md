# Get-SecureSphereAssessmentScanResultURLs

## SYNOPSIS
Returns assessment scan results locations for a single scan.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereAssessmentScanResultURLs -ScanName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns assessment scan results locations for a single scan.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereAssessmentScanResultURLs -ScanName "some-scan"
```

## PARAMETERS

### ScanName
This parameter specifies scan name to return.

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

### Response Body
{
"scan-name": "liron-mssql",
"date": "2018-08-05 13:18:10.0",
"scanned-databases":
[
{
"ip": "10.100.11.40",
"port": 1047,
"alias": "123",
"user": "sa",
"passed-tests": 13,
"failed-tests": 1,
"error-tests": 0,
"irrelevant-tests": 0,
"database-type": "MsSql",
"service-id": "MSSQL2008R2",
"scan-results": "scan-results/liron-mssql/123"
},
{
"ip": "10.100.11.40",
"port": 1047,
"alias": "default credentials for 10.100.11.40-Default Site-liron-group-liron-service-MSSQL",
"user": "sa",
"passed-tests": 13,
"failed-tests": 1,
"error-tests": 0,
"irrelevant-tests": 0,
"database-type": "MsSql",
"service-id": "MSSQL2008R2",
"scan-results": "scan-results/liron-mssql/default credentials for 10.100.11.40-Default Site-liron-group-liron-service-MSSQL"
}
],
"passed-tests": 26,
"failed-tests": 2,
"error-tests": 0,
"irrelevant-tests": 0
}

## NOTES

### Error Codes
IMP-14007 - Bad parameter

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61707.htm)



