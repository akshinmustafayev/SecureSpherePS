# Set-SecureSphereServer

## SYNOPSIS
Sets SecureSphere address for which we will connect to.

## SYNTAX

### Parameter Set 1
```
Set-SecureSphereServer [-Server] <String> [<CommonParameters>]
```

## DESCRIPTION
Sets SecureSphere address for which we will connect to.

## EXAMPLES

### EXAMPLE 1

```powershell
Set-SecureSphereServer -Server "https://mxserver.domain.com:port"
```

## PARAMETERS

### Server
This parameter specifies server address

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: 0
Default Value: None
Pipeline Input: False
```

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

URL must be written in the following format: "https://your_server:8083", otherwise connection will fail.

If URL ends with '/' (Example: "https://your_server:8083/"), it will be removed automatically during execution (Example: Will become "https://your_server:8083").

Note that this cmdlet usage is prohibited if you have already created new session to server via New-SecureSphereSession.
In this case you have to use Remove-SecureSphereSession cmdlet to remove active session to be able to set new server again.



## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)



