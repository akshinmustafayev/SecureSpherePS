# Edit-SecureSphereWebApplication

## SYNOPSIS
Updates the web application indicated by the path parameters siteName, serverGroupName, serviceName and webApplicationName. The application attributes that can be updated are listed below.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereWebApplication -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -WebApplicationName <String> [-NewWebApplicationName <String>] [<CommonParameters>]
```

### Parameter Set 2
```
Edit-SecureSphereWebApplication -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -WebApplicationName <String> [-LearnSettings <String>] [<CommonParameters>]
```

### Parameter Set 3
```
Edit-SecureSphereWebApplication -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -WebApplicationName <String> [-ParseOCSPRequests] [<CommonParameters>]
```

### Parameter Set 4
```
Edit-SecureSphereWebApplication -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -WebApplicationName <String> [-RestrictMonitoringToUrl <String>] [<CommonParameters>]
```

### Parameter Set 5
```
Edit-SecureSphereWebApplication -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -WebApplicationName <String> [-IgnoreUrlsDirectories <String>] [<CommonParameters>]
```

### Parameter Set 6
```
Edit-SecureSphereWebApplication -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -WebApplicationName <String> [-NewWebApplicationName <String>] [-LearnSettings <String>] [-ParseOCSPRequests] [-RestrictMonitoringToUrl <String>] [-IgnoreUrlsDirectories <String>] [<CommonParameters>]
```

## DESCRIPTION
Updates the web application indicated by the path parameters siteName, serverGroupName, serviceName and webApplicationName. The application attributes that can be updated are listed below.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereWebApplication -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -WebApplicationName "Official-Website" -NewWebApplicationName "Store-Website" -LearnSettings "LearnAll" -ParseOCSPRequests $true
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the web application.

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
This parameter specifies the name of the parent server group of the web application.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### WebServiceName
This parameter specifies the name of the parent service of the web application.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### WebApplicationName
This parameter specifies the name of the web application to update.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### NewWebApplicationName
This parameter specifies the new web application name.

```yaml
Type: String
Parameter Sets: Parameter Set 1, Parameter Set 6
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### LearnSettings
This parameter specifies the parameters learn mode.

```yaml
Type: String
Parameter Sets: Parameter Set 2, Parameter Set 6
Aliases: none

Required: false
Position: named
Default Value: None
Accepted Values: LearnAll
                 LearnAllExceptStatics
                 LearnUrlsWithParams
Pipeline Input: False
```

### ParseOCSPRequests
This parameter indicates whether to parse OCSP requests for this application.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 3, Parameter Set 6
Aliases: none

Required: false
Position: named
Default Value: False
Pipeline Input: False
```

### RestrictMonitoringToUrl
This parameter specifies the name of URL Prefixes / Directory Group global object that restricts monitoring to these URLs.

```yaml
Type: String
Parameter Sets: Parameter Set 4, Parameter Set 6
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### IgnoreUrlsDirectories
This parameter specifies the name of URL Prefixes / Directory Group global object of URLs to ignore.

```yaml
Type: String
Parameter Sets: Parameter Set 5, Parameter Set 6
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
IMP-10005 - An item with this name already exists - please select a different name
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10017 - Service not found
IMP-10014 - Application not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61869.htm)



