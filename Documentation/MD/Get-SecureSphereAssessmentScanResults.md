# Get-SecureSphereAssessmentScanResults

## SYNOPSIS
Returns details of a DAS assessment scan for a specific database connection.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereAssessmentScanResults -ScanName <String> -DatabaseName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns details of a DAS assessment scan for a specific database connection.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereAssessmentScanResults -ScanName "some-scan" -DatabaseName "hr_prod"
```

## PARAMETERS

### ScanName
This parameter specifies scan name.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### DatabaseName
This parameter specifies database name.

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
...
}

## NOTES

### Error Codes
IMP-14007 - Scan name not found
IMP-10150 - Database connection not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61707.htm)



