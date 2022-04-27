# Get-SecureSphereAllScanExecutiveSummaryResults

## SYNOPSIS
This method returns a list of the scan executive summary results for all scans, ordered by the time each scan was run.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereAllScanExecutiveSummaryResults [<CommonParameters>]
```

## DESCRIPTION
This method returns a list of the scan executive summary results for all scans, ordered by the time each scan was run.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereAllScanExecutiveSummaryResults
```

## PARAMETERS

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
[{
"scan-name": "report-scan-2",
"status": "Finished",
"create-time": "2021-05-04 16:23:59.0",
"last-update-time": "2021-05-04 16:23:59.0",
"scanned-databases": [
{
"site": "Default Site",
"server-group": "serh-service",
"service": "postgres-dserg01",
"ip": "10.100.31.202",
"port": 5432,
"details": {
"server-scanned": true,
"scanned-dbs": [{
"db-name": "dserg0",
"scanned": true
},{
"db-name": "dserg1",
"scanned": false}]}}]}]

## NOTES

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/77726.htm)



