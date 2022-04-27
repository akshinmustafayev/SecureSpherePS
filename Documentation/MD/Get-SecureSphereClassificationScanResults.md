# Get-SecureSphereClassificationScanResults

## SYNOPSIS
Returns all classification results details for the given scan.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereClassificationScanResults [-ScanName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns all classification results details for the given scan.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereClassificationScanResults -ScanName "some scan"
```

## PARAMETERS

### ScanName
This parameter specifies scan name.

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

### Response Body
{
...}



## NOTES

### Error Codes
IMP-14007 - Scan name not found
IMP-14011 - More than one scan with the same name

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70890.htm)



