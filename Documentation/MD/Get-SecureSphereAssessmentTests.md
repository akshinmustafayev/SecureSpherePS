# Get-SecureSphereAssessmentTests

## SYNOPSIS
Returns an overview of DAS assessment tests.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereAssessmentTests [<CommonParameters>]
```

## DESCRIPTION
Returns an overview of DAS assessment tests. The test data is in CSV format with the following columns:
1. ID
2. Policy ID
3. Name
4. Description
5. Vulnerability Description
6. Imported from ADC
7. Category
8. Vulnerability Type
9. Recommended Fix in Policy
10. CVE
11. Script Type
12. Severity (see table Severity Mapping below for details)
13. Script
14. Additional Script
15. Regulation Name
16. Regulation Section Number

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereAssessmentTests
```

## PARAMETERS

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

### Severity Mapping
The following is the mapping of the severity values. The first column lists the severity, the second column lists the numeric value of that severity. Note that in the SecureSphere GUI both values are displayed, while via the API only the numeric value is outputted.

---------------------------------------
\|    SEVERITY    \|    NUMERIC VALUE   \|
---------------------------------------
Low         \| X = 0
Medium      \| 0 < X < 3
High        \| 3 <= X < 7
Critical    \| 7 <= X < 10

### Severity Mapping
IMP-10122

Database connection error

IMP-10125

Error writing to file

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61719.htm)



