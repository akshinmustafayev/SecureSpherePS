# New-SecureSphereServerGroup

## SYNOPSIS
Creates a new server group with a name, as indicated by the path parameter serverGroupName, under the site, as indicated by the path parameter siteName.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereServerGroup -SiteName <String> -ServerGroupName <String> [<CommonParameters>]
```

## DESCRIPTION
Creates a new server group with a name, as indicated by the path parameter serverGroupName, under the site, as indicated by the path parameter siteName.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereServerGroup -SiteName "Denver" -ServerGroupName "HR-Prod"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the server group to create.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ServerGroupName
This parameter specifies the name of the server group to create.

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

### Error Codes
IMP-10005 - An item with this name already exists - please select a different name
IMP-10006 - Site not found
IMP-10086 - Cannot create \\" serverGroupName \\", number of Instances exceeds the system limitation (maxNumOfServeGroupsAllowed).

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61627.htm)



