# Get-SecureSphereDBCPUUsageRestrainingConfiguration

## SYNOPSIS
Retrieves the current configuration state of the CPU Usage Restraining feature.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBCPUUsageRestrainingConfiguration [-AgentName <String>] [<CommonParameters>]
```

## DESCRIPTION
Retrieves the current configuration state of the CPU Usage Restraining feature.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBCPUUsageRestrainingConfiguration -AgentName "HR_DB"
```

## PARAMETERS

### AgentName
This parameter specifies the display name of the agent.

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
"enabled": true,
"cpu-usage-limit": 15,
"time-to-reactivate": 60
}

## NOTES

### Error Codes
IMP-10066 - Agent not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/65311.htm)



