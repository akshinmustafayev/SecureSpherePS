# New-SecureSphereAssessmentTest

## SYNOPSIS
Creates an assessment test.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereAssessmentTest [-TestName <String>] [-Description [<String>]] [-Severity <String>] [-Category <String>] [-ScriptType <String>] [-OSType <String>] [-DBType <String>] [-RecommendedFix <String>] [-TestScript [<String>]] [-AdditionalScript [<String>]] [-ResultLayout <String[]>] [<CommonParameters>]
```

### Parameter Set 2
```
New-SecureSphereAssessmentTest [-TestName <String>] [-Severity <String>] [-Category <String>] [-ScriptType <String>] [-OSType <String>] [-DBType <String>] [-RecommendedFix <String>] [-ResultLayout <String[]>] [<CommonParameters>]
```

## DESCRIPTION
Creates an assessment test.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereAssessmentTest -TestName "test-9" -Description "1234" -Severity "Info" -Category "OS Integrity" -ScriptType "DB" -OSType "zOS" -DBType "Oracle" -RecommendedFix "12345678" -TestScript "additional script" -AdditionalScript "-- test script is required to return 0 for success, 1 for failure\nselect 0 from dual123" -ResultLayout @("wdw", "wer")
```

## PARAMETERS

### TestName
This parameter specifies test name to create.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Description
This parameter specifies description.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Severity
This parameter specifies severity.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Category
This parameter specifies category

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ScriptType
This parameter specifies script type.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### OSType
This parameter specifies OS type.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### DBType
This parameter specifies DB type.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### RecommendedFix
This parameter specifies recommended fix.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### TestScript
This parameter specifies test script.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### AdditionalScript
This parameter specifies additional script. Test script is required to return 0 for success, 1 for failure. Example: select 0 from dual123

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ResultLayout
This parameter specifies result layout.

```yaml
Type: String[]
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

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70918.htm)



