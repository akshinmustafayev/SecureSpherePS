# Get-SecureSphereDBAllDataInterfacesForAgent

## SYNOPSIS
Returns a list of all the agent data interfaces.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBAllDataInterfacesForAgent [-AgentName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of all the agent data interfaces.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBAllDataInterfacesForAgent -AgentName "agent007"
```

## PARAMETERS

### AgentName
This parameter specifies the name of the agent of the data interfaces to get.

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
"data-interfaces": [
{ port: "",
type: "MSSQLIPC",
id: "-2622943022049598787" },
{ port: "1047",
type: "TCP",
id: "-4061705070240462639" },
{ port: "1047",
type: "TCP",
id: "7063390416833927248" }
]}

## NOTES

### Error Codes
IMP-10066 - Agent not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/77726.htm)



