# Get-SecureSphereDBAllServices

## SYNOPSIS
Returns a list of all db services names under the given server group indicated by the path parameters siteName and serverGroupName.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBAllServices -SiteName <String> -ServerGroupName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a list of all db services names under the given server group indicated by the path parameters siteName and serverGroupName.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBAllServices -SiteName "Denver" -ServerGroupName "HR-Prod"
```

## PARAMETERS

### SiteName
This parameter specifies the	name of the parent site of the db service to access.

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
This parameter specifies the name of the parent server group of the db service to access.

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

### Response Body
{
"db-services":["Oracle", "MySQL", "Oracel2"]
}

## NOTES

### Error Codes
IMP-10006 - Site not found
IMP-10008 - Server Group not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61656.htm)



