# Set-SecureSphereAPIMode

## SYNOPSIS
Sets the API mode to be either Strict or Lax.

## SYNTAX

### Parameter Set 1 (Default)
```
Set-SecureSphereAPIMode -Mode <String> [<CommonParameters>]
```

## DESCRIPTION
Sets the API mode to be either Strict or Lax. The differences between these modes are:
1. When all request body parameters are optional, and you do not want to send any of them (which might happen during creation of a resource), in the strict mode you are supposed to send an empty JSON request body ("{}"). In lax mode, the API accepts a missing request considers it an empty JSON request body. In strict mode the API returns an error.
2. When the API encounters an unknown parameter in request body, it returns an error if it is in strict mode. In lax mode it ignores the unknown parameter. This makes it possible to program the client API application for newer versions and still be able to call an older version. For example, if you have two MX machines in two different versions, you may add the new parameters into the request body, and in lax mode the API ignores them.

The strict /lax modes are configured and managed per session. By default each session starts in the strict mode and may be altered to lax using an appropriate API call.

## EXAMPLES

### EXAMPLE 1

```powershell
Set-SecureSphereAPIMode -Mode "Strict"
```

## PARAMETERS

### Mode
This parameter specifies the needed strictness mode.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Accepted Values: Strict
                 Lax
Pipeline Input: False
```

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

### Error Codes
IMP-10016 - The \\"mode\\" entered is illegal

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61844.htm)



