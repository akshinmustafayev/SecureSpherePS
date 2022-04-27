# Add-SecureSphereDBMultipleTagsToAgent

## SYNOPSIS
Adds multiple tags to the specified agent. Already applied tags will be discarded and replaced with newly submitted list.

## SYNTAX

### Parameter Set 1 (Default)
```
Add-SecureSphereDBMultipleTagsToAgent -AgentName <String> -Tags <String[]> [<CommonParameters>]
```

## DESCRIPTION
Adds multiple tags to the specified agent. Already applied tags will be discarded and replaced with newly submitted list.

## EXAMPLES

### EXAMPLE 1

```powershell
Add-SecureSphereDBMultipleTagsToAgent -AgentName "PayrollAgent34" -Tags @("OracleAgents", "SqlServerAgents")
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

### Tags
This parameter specifies list of tags.

```yaml
Type: String[]
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

IMP-10066 - Agent not found
IMP-10042 - Permission denied to update the agent
IMP-10082 - Tag not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61670.htm)



