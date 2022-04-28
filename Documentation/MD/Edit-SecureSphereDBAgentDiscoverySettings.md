# Edit-SecureSphereDBAgentDiscoverySettings

## SYNOPSIS
Updates the current state of the Discovery Settings of the Agent.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereDBAgentDiscoverySettings [-AgentName <String>] [<CommonParameters>]
```

## DESCRIPTION
Updates the current state of the Discovery Settings of the Agent.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereDBAgentDiscoverySettings -AgentName "HR_DB" -Enabled $false -ScanInterval 240
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

### Enabled
This parameter must be set to True if the db-discovery feature should be enabled.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ScanInterval
This parameter specifies time between 2 consecutive scans.

```yaml
Type: UInt32
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
IMP-10066 - Agent not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/65311.htm)



