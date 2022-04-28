# New-SecureSphereClassificationScan

## SYNOPSIS
This method creates an classification scan with the given properties.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereClassificationScan [-ScanName <String>] [-ProfileName [<String[]>]] [-ApplyTo <String[]>] [-Scheduling <Schedule>] [<CommonParameters>]
```

## DESCRIPTION
This method creates an classification scan with the given properties.

## EXAMPLES

### EXAMPLE 1

```powershell
$Scheduling = @{
    "frequency" = "Weekly";
    "weekly" = @{
        "every-number-of-days" = "5";
        "days-of-week" = @(
            "every-number-of-sun", "Wed"
        );
    }
}

New-SecureSphereClassificationScan -ScanName "some classification scan" `
    -ProfileName "some profile name" `
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
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ProfileName
This parameter specifies profile name.

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
IMP-10005 - An item with this name already exists - please select a different name
IMP-10015 - Cannot create "assessment scan" since parameter "X" is missing
IMP-14006 - Scan scheduling not set properly
IMP-14008 - Could not find profile name: {0}.
IMP-10150 - The requested Database Connection name was not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69908.htm)



