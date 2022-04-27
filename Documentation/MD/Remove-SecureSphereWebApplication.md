# Remove-SecureSphereWebApplication

## SYNOPSIS
Deletes the web application indicated by the path parameters siteName, serverGroupName , webServiceName and webApplicationName.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereWebApplication -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -WebApplicationName <String> [<CommonParameters>]
```

## DESCRIPTION
Deletes the web application indicated by the path parameters siteName, serverGroupName , webServiceName and webApplicationName.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereWebApplication -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -WebApplicationName "Official-Website"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the application.

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
This parameter specifies the name of the parent server group of the application.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### WebServiceName
This parameter specifies the name of the parent service of the application.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### WebApplicationName
This parameter specifies the name of the web application to delete.

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
IMP-10014 - Application not Found
IMP-10017 - Service not found
IMP-10054 - Application cannot be deleted because it is a default application

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61867.htm)



