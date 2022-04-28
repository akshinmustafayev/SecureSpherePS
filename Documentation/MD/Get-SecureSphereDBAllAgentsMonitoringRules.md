# Get-SecureSphereDBAllAgentsMonitoringRules

## SYNOPSIS
Returns all agents monitoring rules (policies) from a given type, with the given name prefix.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBAllAgentsMonitoringRules [<CommonParameters>]
```

## DESCRIPTION
Returns all agents monitoring rules (policies) from a given type, with the given name prefix.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBAllAgentsMonitoringRules
```

## PARAMETERS

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
{
"agents":
[{
"name": "ITP-File-Agent",
"ip": "10.100.65.31",
"hostname": "itp-server"
},{
"name": "ITP-DB-Agent",
"ip": "10.100.65.34",
"hostname": "itp-server-lp1"
},}]}

## NOTES

### Error Codes
IMP-10033 - Policy not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70901.htm)



