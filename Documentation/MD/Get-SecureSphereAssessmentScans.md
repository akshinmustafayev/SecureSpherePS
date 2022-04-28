# Get-SecureSphereAssessmentScans

## SYNOPSIS
Returns an overview of DAS assessment scans.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereAssessmentScans [<CommonParameters>]
```

## DESCRIPTION
Returns an overview of DAS assessment scans. The scan data is in CSV format with the following columns:
1. ID
2. Name
3. DB Type
4. Policy ID
5. Last Run
6. Next Run

SecureSphere Database Assessment API requests support the UTF 8 character set.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereAssessmentScans
```

## PARAMETERS

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

### Error Codes
IMP-10122 - Database connection error
IMP-10125 - Error writing to file

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61719.htm)



