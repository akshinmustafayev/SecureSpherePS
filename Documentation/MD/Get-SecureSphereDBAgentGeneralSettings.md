# Get-SecureSphereDBAgentGeneralSettings

## SYNOPSIS
Retrieves some of the Agent’s General Settings data.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBAgentGeneralSettings [-AgentName <String>] [<CommonParameters>]
```

## DESCRIPTION
Retrieves some of the Agent’s General Settings data.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBAgentGeneralSettings -AgentName "HR_DB"
```

## PARAMETERS

### AgentName
This parameter specifies the name of the agent whose settings you want to retrieve.

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
{ "default-server-group-name": "SG_1", "cpu-usage-restraining": false, "cpu-usage-percentage": 89, "time-to-reactivate-after-disabling": 20, "fictitious-source-ip": "127.0.0.1", "fictitious-destination-ip": "127.0.0.2", "fictitious-port": "2103" }

## NOTES

### Error Codes
IMP-10066 - Agent not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/65311.htm)



