﻿# Get-SecureSphereWebApplication

## SYNOPSIS
Returns the web application indicated by the path parameters siteName, serverGroupName, webServiceName and webApplicationName.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereWebApplication -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -WebApplicationName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns the web application indicated by the path parameters siteName, serverGroupName, webServiceName and webApplicationName.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereWebApplication -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -WebApplicationName "Official-Website"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the web service.

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
This parameter specifies the name of the parent server group of the web service.

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
This parameter specifies the name of the web service.

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
This parameter specifies the name of the web application to retrieve (GET).

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
"appName":"Official-Website",
"learnSettings":"LearnAll",
"parseOCSPRequests":true
}

## NOTES

### Error Codes
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10014 - Application not found
IMP-10017 - Service not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61868.htm)


