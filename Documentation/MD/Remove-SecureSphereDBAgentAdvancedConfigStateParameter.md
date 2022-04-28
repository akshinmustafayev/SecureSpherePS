# Remove-SecureSphereDBAgentAdvancedConfigStateParameter

## SYNOPSIS
Deletes the given parameters from an Agent’s Advanced Configuration.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereDBAgentAdvancedConfigStateParameter [-AgentName <String>] [-AgentConfig <Array>] [<CommonParameters>]
```

## DESCRIPTION
Deletes the given parameters from an Agent’s Advanced Configuration. If the specific parameter is removed from advanced configuration, the agent will revert to a default value for that parameter. The given values of the parameters are completely ignored (an empty string is a valid input).

## EXAMPLES

### EXAMPLE 1

```powershell
$AgentConfig = @{ 
    "agent-config" = @{
        "files-dir"=".";
    }
}

Remove-SecureSphereDBAgentAdvancedConfigStateParameter -AgentName "HR_DB" -AgentConfig $AgentConfig
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

### AgentConfig
This parameter specifies structure that consists of parameters to delete from configuration.

```yaml
Type: Array
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

## NOTES

### Error Codes
IMP-10066 - Agent not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/77726.htm)



