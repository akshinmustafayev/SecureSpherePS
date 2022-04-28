# Set-SecureSphereDBDataInterfaceToService

## SYNOPSIS
Associates a data interface of an agent to the service.

## SYNTAX

### Parameter Set 1 (Default)
```
Set-SecureSphereDBDataInterfaceToService [-SiteName <String>] [<CommonParameters>]
```

## DESCRIPTION
Associates a data interface of an agent with the name indicated by the path parameters agentName and dataInterfaceID, to the service with the name indicated by the path parameters siteName, serverGroupName and dbServiceName. A data interface can only be associated with a single service at a time. Thus, associating a data interface with a service deletes the association if it already exists.

## EXAMPLES

### EXAMPLE 1

```powershell
Set-SecureSphereDBDataInterfaceToService -SiteName "Denver" -ServerGroupName "HR-Prod" -DBServiceName "Payroll-Oracle9" -AgentName "PayrollAgent34" -DataInterfaceID 489948942995613687
```

## PARAMETERS

### SiteName
This parameter specifies the name of the site to access.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ServerGroupName
This parameter specifies the name of the server group to access

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### DBServiceName
This parameter specifies the name of the service to access.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### AgentName
This parameter specifies the name of the agent of the data interface.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### DataInterfaceID
This parameter specifies the ID of the data interface.

```yaml
Type: UInt64
Parameter Sets: (All)
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
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10017 - Service not found
IMP-10066 - Agent not found
IMP-10065 - Data interface not found
IMP-10067 - The agent is not under the given server group
IMP-10069 - The selected Service Type and Interface Type are not compatible. Please select a compatible combination, then try again.
IMP-10070 - Bad data interface ID format.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/77726.htm)



