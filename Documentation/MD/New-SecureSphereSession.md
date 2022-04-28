# New-SecureSphereSession

## SYNOPSIS
Creates a new SecureSphere session.

## SYNTAX

### Parameter Set 1
```
New-SecureSphereSession -Login <String> -Password <String> [<CommonParameters>]
```

## DESCRIPTION
Creates a new SecureSphere session with the specified administrative login and password.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereSession -Login "ADMIN" -Password "SOME_PASSWORD"
```

## PARAMETERS

### Login
Administrative user login

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Password
Administrative user password

```yaml
Type: String
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

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)



