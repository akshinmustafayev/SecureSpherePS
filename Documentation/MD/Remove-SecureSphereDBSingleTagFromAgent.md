# Remove-SecureSphereDBSingleTagFromAgent

## SYNOPSIS
Removes a specific tag from the specified agent.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereDBSingleTagFromAgent -AgentName <String> -TagName <String> [<CommonParameters>]
```

## DESCRIPTION
Removes a specific tag from the specified agent.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereDBSingleTagFromAgent -AgentName "PayrollAgent34" -TagName "OracleAgents"
```

## PARAMETERS

### AgentName
This parameter specifies the name of the agent from which to remove the tag.

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
This parameter specifies the name of the tag to remove from the agent.

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
IMP-10066 - Agent not found
IMP-10042 - Permission denied to update the agent
IMP-10082 - Tag not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61672.htm)



