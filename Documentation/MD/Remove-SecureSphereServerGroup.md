# Remove-SecureSphereServerGroup

## SYNOPSIS
Delete a server group with the name indicated by the path parameter serverGroupName, under a site with the name indicated by the path parameters siteName.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereServerGroup -SiteName <String> -ServerGroupName <String> [<CommonParameters>]
```

## DESCRIPTION
Delete a server group with the name indicated by the path parameter serverGroupName, under a site with the name indicated by the path parameters siteName.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereServerGroup -SiteName "Denver" -ServerGroupName "HR-Prod"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the server group to delete.

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
This parameter specifies the name of the server group to delete.

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
IMP-10006 - Site not found
IMP-10008 - Server Group not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61629.htm)



