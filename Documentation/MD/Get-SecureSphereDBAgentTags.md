# Get-SecureSphereDBAgentTags

## SYNOPSIS
Returns a list of all tags applied to the specified agent.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBAgentTags -AgentName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a list of all tags applied to the specified agent.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBAgentTags -AgentName "PayrollAgent34"
```

## PARAMETERS

### AgentName
This parameter specifies the name of the agent to which the tags are applied.

```yaml
Type: String
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

### Response Body
{"tags" : ["OracleAgents"]}

## NOTES

### Error Codes
IMP-10066 - Agent not found

IMP-10042 - Permission denied to view the agent

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61668.htm)



