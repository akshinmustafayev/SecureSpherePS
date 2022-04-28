# Get-SecureSphereDBAgentGeneralDetails

## SYNOPSIS
Retrieves some of the Agent’s General Details data.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBAgentGeneralDetails [-AgentName <String>] [<CommonParameters>]
```

## DESCRIPTION
Retrieves some of the Agent’s General Details data.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBAgentGeneralDetails -AgentName "HR_DB"
```

## PARAMETERS

### AgentName
This parameter specifies the name of the agent whose details you want to retrieve.

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
"status": {
"general-status": "Running",
"start-time": "2017-03-02 14:27:31.0",
"last-status-update": "Fri Mar 03 11:38:59 PST 2017",
"last-activity": "Never",
"throughput-kb": "0",
"connections-per-sec": "0",
"hits-per-sec": "0",
"cpu-utilization": "0"
},
"properties": {
"Agent Version": "12.0.0.1008",
"Platform": "AMD64",
"Hostname": "qawin2008-64",
"Operating System": "Microsoft Windows Server 2008 Standard Edition, 64-bit",
"Kernel Patch": "Service Pack 1 (build 6001)"
},
"general-info": {
"name": "HR_DB",
"ip": "1.1.1.1",
"creation-time": "2017-03-02 14:25:49.0",
"manual-settings-activation": "Off"
}

## NOTES

### Error Codes
IMP-10066 - Agent not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/65311.htm)



