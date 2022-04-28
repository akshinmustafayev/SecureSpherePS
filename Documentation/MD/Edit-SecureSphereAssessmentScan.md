# Edit-SecureSphereAssessmentScan

## SYNOPSIS
This method updates an existing assessment scan with the given properties.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereAssessmentScan [-ScanName <String>] [-PolicyTags <String[]>] [-Scheduling <Schedule>] [<CommonParameters>]
```

## DESCRIPTION
This method updates an existing assessment scan with the given properties.

## EXAMPLES

### EXAMPLE 1

```powershell
$Scheduling = @{
    "frequency" = "Weekly";
    "weekly" = @{
        "every-number-of-days" = "5";
        "days-of-week" = @(
            "sun", "Wed"
        );
    }
}

Edit-SecureSphereAssessmentScan -ScanName "some clever scan" `
    -PolicyTags @(
        "tag1",
        "tag2") `
    -Scheduling $Scheduling
```

## PARAMETERS

### ScanName
This parameter specifies scan name to create.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### PolicyTags
This parameter specifies policy tags.

```yaml
Type: String[]
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Scheduling
This parameter specifies schedule.

```yaml
Type: Schedule
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

## NOTES

### Error Codes
IMP-14007 - Could not find "assessment" scan: {1}
IMP-14006 - Scan scheduling not set properly
IMP-10150 - The requested Database Connection name was not found
IMP-14011 - Could not find policy: {X}.
IMP-14012 - Updating {0} parameter is not permitted.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70919.htm)



