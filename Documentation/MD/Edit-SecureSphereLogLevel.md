# Edit-SecureSphereLogLevel

## SYNOPSIS
Changes the granularity of the log. "Detailed" level will produce more specific data, while "Terse" level will provide only basic information.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereLogLevel -Level <String> [<CommonParameters>]
```

## DESCRIPTION
Changes the granularity of the log. "Detailed" level will produce more specific data, while "Terse" level will provide only basic information.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereLogLevel -Level "Detailed"
```

## PARAMETERS

### Level
This parameter specifies the new log level.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Accepted Values: Detailed
                 Medium
                 Terse
Pipeline Input: False
```

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

### Error Codes
IMP-10016 - The \\"level\\" entered is illegal
IMP-10016 - The \\"type\\" entered is illegal

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66928.htm)



