# Edit-SecureSphereServerGroup

## SYNOPSIS
Updates a server group with the name indicated by the path parameter serverGroupName, under a site with the name indicated by the path parameters siteName.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereServerGroup -SiteName <String> -ServerGroupName <String> [-NewName <String>] [-OperationMode <String>] [-IgnoreIpGroup <String>] [-LimitMonitoringToIpGroup <String>] [<CommonParameters>]
```

### Parameter Set 2
```
Edit-SecureSphereServerGroup -SiteName <String> -ServerGroupName <String> [-NewName <String>] [<CommonParameters>]
```

### Parameter Set 3
```
Edit-SecureSphereServerGroup -SiteName <String> -ServerGroupName <String> [-OperationMode <String>] [<CommonParameters>]
```

### Parameter Set 4
```
Edit-SecureSphereServerGroup -SiteName <String> -ServerGroupName <String> [-IgnoreIpGroup <String>] [<CommonParameters>]
```

### Parameter Set 5
```
Edit-SecureSphereServerGroup -SiteName <String> -ServerGroupName <String> [-LimitMonitoringToIpGroup <String>] [<CommonParameters>]
```

## DESCRIPTION
Updates a server group with the name indicated by the path parameter serverGroupName, under a site with the name indicated by the path parameters siteName.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereServerGroup -SiteName "Denver" -ServerGroupName "HR-Prod" -NewName "myServerGroup" -OperationMode "active" -LimitMonitoringToIpGroup "All Search Engines"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the server group to update.

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
This parameter specifies the name of the server group to update.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### NewName
This parameter specifies the new server group name.

```yaml
Type: String
Parameter Sets: Parameter Set 1, Parameter Set 2
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### OperationMode
Switch between the different operation modes.

```yaml
Type: String
Parameter Sets: Parameter Set 1, Parameter Set 3
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### IgnoreIpGroup
This parameter specifies the name of an IP Group to ignore.

```yaml
Type: String
Parameter Sets: Parameter Set 1, Parameter Set 4
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### LimitMonitoringToIpGroup
This parameter specifies the name of an IP Group to limit monitoring to.

```yaml
Type: String
Parameter Sets: Parameter Set 1, Parameter Set 5
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
IMP-10005 - An item with this name already exists – please select a different name
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10016 - The "operationMode" entered is illegal
IMP-10071 - Name field must be populated
IMP-10605 - IP Group "ipGroupName" not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61628.htm)



