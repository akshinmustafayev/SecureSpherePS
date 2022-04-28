# Restart-SecureSphereDBAgent

## SYNOPSIS
Initiates DB Agent’s restart.

## SYNTAX

### Parameter Set 1 (Default)
```
Restart-SecureSphereDBAgent [-AgentName <String>] [<CommonParameters>]
```

## DESCRIPTION
Initiates DB Agent’s restart. This process matches the disable/enable functionality available in the MX. Such a restart might be required after applying certain Advanced Configuration parameters.

## EXAMPLES

### EXAMPLE 1

```powershell
Restart-SecureSphereDBAgent -AgentName "HR_DB"
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

## NOTES

### Error Codes
IMP-10066 - Agent not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/65309.htm)



