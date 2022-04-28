# New-SecureSphereWebApplication

## SYNOPSIS
Creates a web application with the name indicated by the path parameter webApplicationName, under the given web service indicated by the path parameters siteName, serverGroupName and webServiceName.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereWebApplication -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -WebApplicationName <String> [-LearnSettings <String>] [-ParseOCSPRequests] [-RestrictMonitoringToUrl <String>] [-IgnoreUrlsDirectories <String>] [<CommonParameters>]
```

### Parameter Set 2
```
New-SecureSphereWebApplication -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -WebApplicationName <String> [<CommonParameters>]
```

## DESCRIPTION
Creates a web application with the name indicated by the path parameter webApplicationName, under the given web service indicated by the path parameters siteName, serverGroupName and webServiceName.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereWebApplication -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -WebApplicationName "Official-Website" -LearnSettings "LearnAll" -ParseOCSPRequests $true
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the web application to create.

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
This parameter specifies the name of the parent server group of the web application to create.

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
This parameter specifies the name of the parent service of the web application to create.

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
This parameter specifies the name of the web application to create.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### LearnSettings
This parameter specifies the parameters learn mode.

```yaml
Type: String
Parameter Sets: Parameter Set 1
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
Parameter Sets: Parameter Set 1
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
Parameter Sets: Parameter Set 1
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
IMP-10005 - An item with this name already exists ‐ please select a different name
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10017 - Service not found
IMP-10032 - Learn settings entered are illegal. Use one of the following: LearnAll LearnAllExceptStatics, LearnUrlsWithParams
IMP-10086 - Cannot create the specified web application. The number of instances exceeds the system limit
IMP-10501 - Restrict Monitoring to URLs group not found
IMP-10502 - Ignore URLs/Directories group not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61866.htm)



