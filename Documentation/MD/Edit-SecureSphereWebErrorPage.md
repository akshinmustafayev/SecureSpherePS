# Edit-SecureSphereWebErrorPage

## SYNOPSIS
Updates the web error page of the given web service, indicated by the path parameters: siteName, serverGroupName and webServiceName.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereWebErrorPage -SiteName <String> -ServerGroupName <String> -WebServiceName <String> [-UseDefaultErrorPage] [-DefaultErrorPageRedirectURL <String>] [-DefaultErrorPageBody <String>] [-DefaultErrorPageResponseCode <String>] [-WebErrorPagePolicies <String[]>] [<CommonParameters>]
```

## DESCRIPTION
Updates the web error page of the given web service, indicated by the path parameters: siteName, serverGroupName and webServiceName.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereWebErrorPage -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -UseDefaultErrorPage $true -DefaultErrorPageRedirectURL  "http://www.google.com" -DefaultErrorPageResponseCode "200 OK"
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

### UseDefaultErrorPage
This parameter indicates whether to use a default error page.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### DefaultErrorPageRedirectURL
This parameter sets the redirect URL for the default error page. If this parameter is set, then defaultErrorPageBody, defaultErrorPageResponseCode must not be set.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### DefaultErrorPageBody
This parameter sets the body of the default error page. If this parameter is set, then defaultErrorPageRedirectURL must not be set.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### DefaultErrorPageResponseCode
This parameter sets the response code of the default error page. If this parameter is set, then defaultErrorPageRedirectURL must not be set.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### WebErrorPagePolicies
This parameter specifies the list of web error page policies to be used on the web service.

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
IMP-10002 - Error while parsing JSON payload or an incompatible argument type for the requested resource
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10017 - Service not found
IMP-12915 - Cannot set both redirect url and error page body or response code as the default error page
IMP-12916 - Could not find Policies: {POLICY_NAMES}
IMP-12917 - A valid URL must start with (http/s)

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66810.htm)



