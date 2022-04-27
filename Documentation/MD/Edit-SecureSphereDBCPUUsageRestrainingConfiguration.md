# Edit-SecureSphereDBCPUUsageRestrainingConfiguration

## SYNOPSIS
Updates the current configuration state of the CPU Usage Restraining feature.

## SYNTAX

### Parameter Set 1
```
Edit-SecureSphereDBCPUUsageRestrainingConfiguration -AgentName <String> -Enabled -CpuUsageLimit <UInt32> -TimeToReactivate <UInt32> [<CommonParameters>]
```

## DESCRIPTION
Updates the current configuration state of the CPU Usage Restraining feature.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereDBCPUUsageRestrainingConfiguration -AgentName "HR_DB" -Enabled $true -CpuUsageLimit 15 -TimeToReactivate 60
```

## PARAMETERS

### AgentName
This parameter specifies the display name of the agent.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Enabled
This parameter specifies whether or not the feature is enabled.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### CpuUsageLimit
This parameter specifies if CPU usage limit.

```yaml
Type: UInt32
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### TimeToReactivate
This parameter specifies time to reactivate following restrain event.

```yaml
Type: UInt32
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
IMP-10066 - Agent not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/65311.htm)



