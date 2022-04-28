# Get-SecureSphereAssessmentScan

## SYNOPSIS
This method returns assessment scan details.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereAssessmentScan [-ScanName <String>] [<CommonParameters>]
```

## DESCRIPTION
This method returns assessment scan details.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereAssessmentScan -ScanName "some scan"
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
"name": "test-9",
"description": "123",
"severity": "Info",
"category": "OS Integrity",
"scriptType": "DB",
"osType": "zOS",
"dbType": "Oracle",
"recommended-fix": "12345678",
"test-script": "additional script",
"additional-script": "-- test script is required to return 0 for success, 1 for failure\\nselect 0 from dual123",
"result-layout": [ "wdw", "wer" ]
}

## NOTES

### Error Codes
IMP-14007 - Could not find "assessment" scan name: {1}.
IMP-14011 - The scan name you entered already exists in more than one scan. Change the name of your scan so that it is unique.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70919.htm)



