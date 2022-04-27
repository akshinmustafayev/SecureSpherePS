# Get-SecureSphereFTLStatus

## SYNOPSIS
Returns current First Time Login process status.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereFTLStatus [-IncludeLog] [<CommonParameters>]
```

### Parameter Set 2
```
Get-SecureSphereFTLStatus [<CommonParameters>]
```

## DESCRIPTION
Returns current First Time Login process status.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereFTLStatus -IncludeLog $false
```

## PARAMETERS

### IncludeLog
This parameter specifies if to include installation log.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: False
Pipeline Input: False
```

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
{
"stage": "Set Gateway group",
"state": "running",
"duration": 10,
"percentage": 10,
"log": "2016-12-25 14:22:01 - INFO - ...\\n2016-12-25 14:22:05..."
}

## NOTES

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66846.htm)



