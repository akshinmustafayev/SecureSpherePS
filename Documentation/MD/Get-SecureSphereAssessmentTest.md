# Get-SecureSphereAssessmentTest

## SYNOPSIS
Returns details of an assessment test.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereAssessmentTest [-TestName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns details of an assessment test.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereAssessmentTest -TestName "test-9"
```

## PARAMETERS

### TestName
This parameter specifies test name.

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

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70919.htm)



