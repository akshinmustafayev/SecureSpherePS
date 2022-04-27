# Edit-SecureSphereSystemDefinition

## SYNOPSIS
Updates a system definition with the name indicated by the parameter ParamName.

## SYNTAX

### Parameter Set 1
```
Edit-SecureSphereSystemDefinition -ParamName <String> -Value <String or Boolean> [<CommonParameters>]
```

## DESCRIPTION
Updates a system definition with the name indicated by the parameter ParamName.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereSystemDefinition -ParamName "server-group-auto-creation" -Value $true
```

### EXAMPLE 2

```powershell
Edit-SecureSphereSystemDefinition -ParamName "default-application-group" -Value "HR Group"
```

### EXAMPLE 3

```powershell
Edit-SecureSphereSystemDefinition -ParamName "service-auto-creation" -Value $false
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

### Value
This parameter specifies Value for the specified system definition name.

```yaml
Type: String or Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
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
IMP-10032 - The "{paramName}" value entered is illegal

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61831.htm)



