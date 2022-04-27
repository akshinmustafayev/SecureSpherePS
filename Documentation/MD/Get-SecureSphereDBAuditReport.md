# Get-SecureSphereDBAuditReport

## SYNOPSIS
Returns the details of a DB audit report.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBAuditReport -ReportName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns the details of a DB audit report.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBAuditReport -ReportName "Some Report"
```

## PARAMETERS

### ReportName
This parameter specifies the name of the report.

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
{ "columns": [ { "name": "Database", "aggregation": "count-distinct" }, { "name": "Service", "aggregation": "group-by-id-name-of-service-id-name" }, { "name": "Destination IP", "aggregation": "group-by" } ], "filters": [ { "values": [ "5593158133644499881" ], "column-name": "Server Group", "operation": "equals", "user-defined-values": [] }, { "type": "dbHostname", "values": [], "column-name": "Lookup Data Set", "operation": "in", "user-defined-values": [ "db1" ], "data-set": "Default Database Account Mapping" }, { "values": [ "ddd" ], "column-name": "User", "operation": "not-equals", "user-defined-values": [] }, { "values": [ "Oracle", "Db2" ], "column-name": "Service Type", "operation": "equals", "user-defined-values": [] } ], "policies": [ "Default Rule - All Events" ], "sorting": [ { "aggregation": "group-by-id-name-of-service-id-name", "direction": "asc", "column-name": "Service" }, { "aggregation": "group-by", "direction": "asc", "column-name": "Destination IP" } ], "display-name": "iris_report", "report-format": "pdf", "time-frame": { "from-to": true, "from-date": 1533070800000, "to-date": 1535317200000 }, "report-id": "/secsph/audit-report[@dn='-1465549295']", "scheduling": { "occurs": "recurring", "recurring": { "frequency": "daily", "daily": { "every-number-of-days": 1 }, "starting-from": "2018-08-29 00:00:00.0", "at-time": "00:00:00" } } }

## NOTES

### Error Codes
IMP-14014 - Report not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70927.htm)



