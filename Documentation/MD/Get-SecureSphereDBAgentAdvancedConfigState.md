# Get-SecureSphereDBAgentAdvancedConfigState

## SYNOPSIS
Retrieves the current Advanced Configuration state of the specific agent.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBAgentAdvancedConfigState [-AgentName <String>] [<CommonParameters>]
```

## DESCRIPTION
Retrieves the current Advanced Configuration state of the specific agent.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBAgentAdvancedConfigState -AgentName "HR_DB"
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
"agent-config": {
"quota": 1000,
"logger-level": "log_warning"
}
}

## NOTES

### Error Codes
IMP-10066 - Agent not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/77726.htm)



