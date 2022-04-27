# Stop-SecureSphereJob

## SYNOPSIS
Aborts a job specified by job ID.

## SYNTAX

### Parameter Set 1
```
Stop-SecureSphereJob -JobId <UInt64> [<CommonParameters>]
```

## DESCRIPTION
Aborts a job specified by job ID.

## EXAMPLES

### EXAMPLE 1

```powershell
Stop-SecureSphereJob -JobId 4640843618294991815
```

### EXAMPLE 2

```powershell
4640843618294991815 | Stop-SecureSphereJob
```

## PARAMETERS

### JobId
This parameter specifies id of the job.

```yaml
Type: UInt64
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

## NOTES

### Error Codes
IMP-10073 - Job with the given job ID could not be found.
IMP-10074 - Abort failed because the job is not running or does not support abort operation.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61835.htm)



