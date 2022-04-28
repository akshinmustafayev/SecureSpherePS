# Add-SecureSphereDBSingleTagToAgent

## SYNOPSIS
Adds a specific tag to the specified agent.

## SYNTAX

### Parameter Set 1 (Default)
```
Add-SecureSphereDBSingleTagToAgent -AgentName <String> -TagName <String> [<CommonParameters>]
```

## DESCRIPTION
Adds a specific tag to the specified agent.

## EXAMPLES

### EXAMPLE 1

```powershell
Add-SecureSphereDBSingleTagToAgent -AgentName "PayrollAgent34" -TagName "OracleAgents"
```

## PARAMETERS

### AgentName
This parameter specifies the name of the agent to which the tag is applied.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### TagName
This parameter specifies the name of the tag applied to the agent.

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

## NOTES

### Error Codes
IMP-10042 - Permission denied to update the agent
IMP-10066 - Agent not found
IMP-10082 - Tag not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61672.htm)



