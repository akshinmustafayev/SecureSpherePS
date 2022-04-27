# Get-SecureSphereSystemDefinitionValue

## SYNOPSIS
Returns the value of the system definition with the name indicated by the parameter ParamName.

## SYNTAX

### Parameter Set 1
```
Get-SecureSphereSystemDefinitionValue -ParamName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns the value of the system definition with the name indicated by the parameter ParamName.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereSystemDefinitionValue -ParamName "default-application-group"
```

### EXAMPLE 2

```powershell
Get-SecureSphereSystemDefinitionValue -ParamName "server-group-auto-creation"
```

### EXAMPLE 3

```powershell
Get-SecureSphereSystemDefinitionValue -ParamName "service-auto-creation"
```

## PARAMETERS

### ParamName
Specifies system definition name

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Accepted Values: default-application-group
                 server-group-auto-creation
                 service-auto-creation
Pipeline Input: False
```

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Responce body
{
"value":"application group 1"
}
{
"value":true
}

## NOTES

### Error Codes
default-application-group
                The application group to which new applications are added by default
                Application Group Name


server-group-auto-creation
               Server group is created automatically on agent registration, if it does not exist
               true/false

service-auto-creation
              Service is created automatically on channel discovery.
              true/false

### Error Codes
IMP-10016 - The \\"System Definition\\" entered is illegal

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61832.htm)



