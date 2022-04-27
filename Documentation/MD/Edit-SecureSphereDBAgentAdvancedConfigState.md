# Edit-SecureSphereDBAgentAdvancedConfigState

## SYNOPSIS
Updates the current Agent’s Advanced Configuration with the provided parameters.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereDBAgentAdvancedConfigState [-AgentName <String>] [-AgentConfig <Array>] [<CommonParameters>]
```

## DESCRIPTION
Updates the current Agent’s Advanced Configuration with the provided parameters’. Any currently non-existing parameters will be added with their corresponding values. Values of any existing parameters will be updated to the provided values. Existing parameters that are not specified in the configuration are not affected.

## EXAMPLES

### EXAMPLE 1

```powershell
$AgentConfig = @{ 
    "agent-config" = @{
        "external-traffic-monitoring-in-kern"=1;
        "files-dir"=".";
        "quota"=8000;
        "mssql-advanced-monitoring"=1
    }
}

Edit-SecureSphereDBAgentAdvancedConfigState -AgentName "HR-Prod" -AgentConfig $AgentConfig
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
This parameter specifies updated Agent's configuration. Any currently non-existing parameters will be added with their corresponding values. Values of any existing parameters will be updated to the provided values.

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

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/77726.htm)



