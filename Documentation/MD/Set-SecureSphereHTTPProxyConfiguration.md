# Set-SecureSphereHTTPProxyConfiguration

## SYNOPSIS
Updates the http proxy configuration.

## SYNTAX

### Parameter Set 1 (Default)
```
Set-SecureSphereHTTPProxyConfiguration -UseProxy [-HostName <String>] [-Port <UInt32>] [-User <String>] [-AuthPolicy <String>] [-Password <String>] [-Domain <String>] [<CommonParameters>]
```

### Parameter Set 2
```
Set-SecureSphereHTTPProxyConfiguration -UseProxy [<CommonParameters>]
```

### Parameter Set 3
```
Set-SecureSphereHTTPProxyConfiguration -UseProxy [-HostName <String>] [-Port <UInt32>] [<CommonParameters>]
```

## DESCRIPTION
Updates the http proxy configuration. The existing settings is overridden. If the http proxy object that is set has missing values (e.g., no user), it is treated as empty (i.e. the user that currently exists in the settings is deleted).

## EXAMPLES

### EXAMPLE 1

```powershell
Set-SecureSphereHTTPProxyConfiguration -UseProxy $true -HostName "10.101.10.10" -Port 4343 -User "admin" -AuthPolicy "NTLM"
```

### EXAMPLE 2

```powershell
Set-SecureSphereHTTPProxyConfiguration -UseProxy $true -HostName "10.101.10.10" -Port 4343 -User "admin" -Password "some_password" -AuthPolicy "Basic"
```

### EXAMPLE 3

```powershell
Set-SecureSphereHTTPProxyConfiguration -UseProxy $false
```

## PARAMETERS

### UseProxy
This parameter specifies if to use proxy.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### HostName
This parameter specifies proxy hostname.

```yaml
Type: String
Parameter Sets: Parameter Set 1, Parameter Set 3
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Port
This parameter specifies proxy port.

```yaml
Type: UInt32
Parameter Sets: Parameter Set 1, Parameter Set 3
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### User


```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Password
This parameter specifies Password for the authentication

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### AuthPolicy
This parameter specifies authentication policy.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Accepted Values: Enum
                 Basic
                 Digest
                 NTLM
Pipeline Input: False
```

### Domain
This parameter specifies Domain to authenticate.

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

## NOTES

### Error Codes
IMP-10007 - SecureSphere was unable to perform the operation. If the problem persists, contact Imperva Technical Support.
IMP-10016 - The "{param}" entered is illegal
IMP-10020 - Port must be between 1 and 65535
IMP-10056 - Body parameter {"paramName"} is missing
IMP-15001 - Invalid IP address or host name
IMP-15002 - Http proxy settings cannot be populated when useProxy is set to false.
IMP-15003 - Proxy domain cannot be populated if authentication policy is set to Basic/Digest.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70377.htm)



