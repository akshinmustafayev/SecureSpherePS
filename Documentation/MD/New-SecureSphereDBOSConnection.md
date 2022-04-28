# New-SecureSphereDBOSConnection

## SYNOPSIS
Creates an existing connection with the given properties.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereDBOSConnection -SiteName <String> -ServerGroupName <String> -IPAddress <String> [-HostName <String>] [-OSType <String>] [-UserName <String>] [-Password <String>] [-ConnectionMode <String>] [-ShareName <String>] [-FolderPath <String>] [-Domain <String>] [<CommonParameters>]
```

### Parameter Set 2
```
New-SecureSphereDBOSConnection -SiteName <String> -ServerGroupName <String> -IPAddress <String> [-HostName <String>] [-OSType <String>] [<CommonParameters>]
```

## DESCRIPTION
Creates an existing connection with the given properties.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereDBOSConnection -SiteName "Denver" -ServerGroupName "HR-Prod" -IPAddress "192.168.1.1" -HostName "127.0.0.1" -OSType "linux" -UserName "admin" -Password "1234" -ConnectionMode "smth" -ShareName "share_name" -FolderPath "some_folder_path" -Domain "some_domain"
```

## PARAMETERS

### SiteName
This parameter specifies site name.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ServerGroupName
This parameter specifies server group name.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### IPAddress
This parameter specifies IP Address.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### HostName
This parameter specifies host name.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### OSType
This parameter specifies OS Type.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Accepted Values: Windows
                 Linux
                 Solaris
                 HP-UX
                 AIX
                 Z/OS
Pipeline Input: False
```

### UserName
This parameter specifies user name.

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
This parameter specifies password.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ConnectionMode
This parameter specifies connection mode.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ShareName
This parameter specifies share name.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### FolderPath
This parameter specifies folder path.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Domain
This parameter specifies Domain.

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
IMP-10152 - Invalid IP address
IMP-10154 - Invalid OS type
IMP-10155 - Username needs to be populated if password is populated
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10015 - Missing parameter
IMP-10173 - Invalid parameter
IMP-10169 - Username needs to be populated if domain is populated
IMP-10170 - Username needs to be populated if folder path is populated
IMP-10171 - Username needs to be populated if share name is populated
IMP-10172 - Username needs to be populated if connection mode is populated
IMP-10166 - Folder path not populated
IMP-10167 - Share name not populated
IMP-10168 - Domain not populated

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61719.htm)



