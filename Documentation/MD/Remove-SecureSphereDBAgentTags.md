# Remove-SecureSphereDBAgentTags

## SYNOPSIS
Deletes all tags from the specified agent.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereDBAgentTags -AgentName <String> [<CommonParameters>]
```

## DESCRIPTION
Deletes all tags from the specified agent.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereDBAgentTags -AgentName "PayrollAgent34"
```

## PARAMETERS

### AgentName
This parameter specifies the name of the agent from which to delete the tags.

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

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61670.htm)



