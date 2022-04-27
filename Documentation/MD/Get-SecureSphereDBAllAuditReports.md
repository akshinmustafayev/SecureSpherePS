# Get-SecureSphereDBAllAuditReports

## SYNOPSIS
Returns a list of all of the DB audit report names.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBAllAuditReports [<CommonParameters>]
```

## DESCRIPTION
Returns a list of all of the DB audit report names.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBAllAuditReports
```

## PARAMETERS

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
{
"db-audit-reports":
[
"SAP - Report Confidential Financial Data and Vendor Tables Activity ",
"SAP - Report User Master Data Tables Activity ",
"SAP - Report Personal Info Tables Activity ",
"PCI - Daily access to cardholder information (CSV) ",
"GDPR Audit", "iris_report"
]
}

## NOTES

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70930.htm)



