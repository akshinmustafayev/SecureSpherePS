# Edit-SecureSphereWebURLRewriteGroups

## SYNOPSIS
Update the list of URL Rewrite Groups connected to this Web Service.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereWebURLRewriteGroups -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -UrlRewriteGroups <String[]> [<CommonParameters>]
```

## DESCRIPTION
Update the list of URL Rewrite Groups connected to this Web Service.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereWebURLRewriteGroups -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -UrlRewriteGroups @("JustAnInnocentUrlRewriteGroup", "JustAGuiltyUrlRewriteGroup")
```

## PARAMETERS

### SiteName
This parameter specifies the site containing the server group.

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
This parameter specifies the server group containing the web service.

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
This parameter specifies the web service of which the plugins will be returned.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### UrlRewriteGroups
This parameter specifies the list of all URL Rewrite Groups connected to this Web Service.

```yaml
Type: String[]
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
IMP-10017 - Service not found
IMP-10680 - URL Rewrite Group "[{groupName}]" not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69938.htm)



