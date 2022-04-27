# Edit-SecureSphereClassificationScan

## SYNOPSIS
This method updates an existing classification scan with the given properties.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereClassificationScan [-ScanName <String>] [-ProfleName <String>] [-Scheduling <Schedule>] [<CommonParameters>]
```

## DESCRIPTION
This method updates an existing classification scan with the given properties.

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

Edit-SecureSphereClassificationScan -ScanName "some clever scan" -ProfleName "profile" -Scheduling $Scheduling
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

### ProfleName
This parameter specifies profile name

```yaml
Type: String
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
IMP-14011 - The scan name you entered already exists in more than one scan. Change the name of your scan so that it is unique.
IMP-14008 - Could not find profile name: {0}

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70890.htm)



