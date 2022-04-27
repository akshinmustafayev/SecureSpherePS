# New-SecureSphereUser

## SYNOPSIS
Creates a new SecureSphere username that can be used to log into the web application.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereUser -UserName <String> -Authenticator <String> [-Password <String>] [-IsEnabled] [-Locked] [-ReadOnly] [-FullName <String>] [-Email <String>] [-Phone <String>] [-Location <String>] [-Title <String>] [-Department <String>] [-Roles <String[]>] [<CommonParameters>]
```

## DESCRIPTION
Creates a new SecureSphere username that can be used to log into the web application.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereUser -UserName "test01" -Password "SOME_PASSWORD"
```

### EXAMPLE 2

```powershell
New-SecureSphereUser -UserName "test01" -Authenticator "External"
```

### EXAMPLE 3

```powershell
New-SecureSphereUser -UserName "test01" -Authenticator "External" -FullName "John" -Department "IT Security"
```

## PARAMETERS

### UserName
This parameter specifies new user login.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Authenticator
This parameter specifies authenticator for the user. If not specified SecureSphere will use "SecureSphere" as default.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Accepted Values: SecureSphere
                 External
Pipeline Input: False
```

### Password
The Password parameter is required if "SecureSphere" authenticator is specified. This parameter specifies user password.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### IsEnabled
This parameter specifies if user login is enabled. If this parameter is not specified, then SecureSphere, by default considers it as true.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: True
Pipeline Input: False
```

### Locked
This parameter specifies if user login is locked. If this parameter is not specified, then SecureSphere, by default considers it as false.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: False
Pipeline Input: False
```

### ReadOnly
This parameter specifies if user login is read only user. If this parameter is not specified, then SecureSphere, by default considers it as false.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: False
Pipeline Input: False
```

### FullName
This parameter specifies user\`s full name.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Email
The Email parameter is not required. This parameter specifies user\`s email address.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Phone
This parameter specifies user\`s phone number.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Title
This parameter specifies user\`s title.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Location
This parameter specifies user\`s location.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Department
This parameter specifies user\`s department.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Roles
This parameter specifies user roles.

```yaml
Type: String[]
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
IMP-10145 - Field length must be between 0 and the maximum value
IMP-15100 - You must specify user password
IMP-15103 - Invalid Authenticator. Should be SecureSphere or External
IMP-15104 - Password parameter is redundant when user is external
IMP-15105 - Could not find one of the roles names - role does not exist
IMP-15106 - User name already exists
IMP-15107 - Invalid value for readOnly property - should be true/false
IMP-15108 - Invalid value for locked property - should be true/false
IMP-15109 - Invalid value for enabled property - should be true/false
IMP-15110 - External system is not defined - could not create/update user to External

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70112.htm)



