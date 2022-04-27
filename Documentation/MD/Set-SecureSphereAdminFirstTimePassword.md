# Set-SecureSphereAdminFirstTimePassword

## SYNOPSIS
Sets the initial user admin password.

## SYNTAX

### Parameter Set 1 (Default)
```
Set-SecureSphereAdminFirstTimePassword -Password <String> [<CommonParameters>]
```

## DESCRIPTION
Sets the initial user admin password. Once the password is set, this API cannot be used again.
This command will not work on physical machines. The user name must be admin.
For information on accepted password guidelines, see the topic Passwords in the SecureSphere Administration Guide.

## EXAMPLES

### EXAMPLE 1

```powershell
Set-SecureSphereAdminFirstTimePassword -Password "P@ssw0rd!!"
```

## PARAMETERS

### Password
This parameter specifies the new password.

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

### Possible responses
HTTP CODE, CODE NAME, IMP CODE, DESCRIPTION
200,OK,none,Successful request
401,Unauthorized,IMP-10063,User is not logged in due to missing login request or wrong login credentials
401,Unauthorized,IMP-12001,Password format is invalid
403,Forbidden,IMP-12004,Admin user was already initialized
405,Method Not Allowed,none,Method not allowed (in physical appliances)

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61616.htm)



