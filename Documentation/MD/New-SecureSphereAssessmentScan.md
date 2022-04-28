# New-SecureSphereAssessmentScan

## SYNOPSIS
This method creates an assessment scan with the given properties.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereAssessmentScan [-ScanName <String>] [-Type <String>] [-PolicyName <String>] [-PreTest] [-PolicyTags [<String[]>]] [-DBConnectionTags [<String[]>]] [-ApplyTo <String[]>] [-Scheduling <Schedule>] [<CommonParameters>]
```

### Parameter Set 2
```
New-SecureSphereAssessmentScan [-ScanName <String>] [-Type <String>] [-PolicyName <String>] [-ApplyTo <String[]>] [-Scheduling <Schedule>] [<CommonParameters>]
```

## DESCRIPTION
This method creates an assessment scan with the given properties.

## EXAMPLES

### EXAMPLE 1

```powershell
$Scheduling = @{
    "occurs" = "recurring";
    "recurring" = @{
        "frequency" = "Daily";
        "daily" = @{
            "every-number-of-days" = 1;
        };
        "starting-from" = "2021-08-29";
        "at-time" = "00:00:00";
    }
}

New-SecureSphereAssessmentScan -ScanName "some clever scan" `
    -Type "Policy based" -PolicyName "Oracle Know Vulnerabilities" `
    -ApplyTo @(
        "conf/dbServices/site1/sg1/service1/dbConnections/connection1",
        "conf/dbServices/site1/sg1/service1/dbConnections/connection2") `
    -Scheduling $Scheduling
```

## PARAMETERS

### ScanName
This parameter specifies scan name to create.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Type
This parameter specifies type.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### PolicyName
This parameter specifies policy name.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### PreTest
This parameter specifies pre test value.

```yaml
Type: Boolean
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

### DBConnectionTags
This parameter specifies DB connection tags.

```yaml
Type: String[]
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ApplyTo
This parameter specifies apply to.

```yaml
Type: String[]
Parameter Sets: (All)
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
Parameter Sets: (All)
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
IMP-10005 - An item with this name already exists - please select a different name
IMP-10015 - Cannot create "assessment scan" since parameter "X" is missing
IMP-14010 - The given {0} is invalid. The valid possible options are: {1}
IMP-14005 - Could not find policy: {X}.
IMP-14006 - Scan scheduling not set properly
IMP-10150 - The requested Database Connection name was not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70919.htm)



