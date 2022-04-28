# Get-SecureSphereWebSingleURLFromProfile

## SYNOPSIS
Returns a Json object that represents all the information of a single URL, including its parameters.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereWebSingleURLFromProfile -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -WebApplicationName <String> -UrlPath <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a Json object that represents all the information of a single URL, including its parameters.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereWebSingleURLFromProfile -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -WebApplicationName "Official-Website" -UrlPath "some_path_url"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the site.

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
This parameter specifies the name of the server group.

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
This parameter specifies the name of the service.

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
This parameter specifies the name of the web application.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### UrlPath
This parameter specifies the full path of the URL.

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
"urlFullPath": "/mydirectory/index.php",
"status": "InProtection",
"contentTypes":[
"URL"],
"allowedMethods":[
{
"status": "decided",
"method": "GET"
}],
"parameters":[
{"name": "order", "maxLength": 10, "minLength": 1, "type": "Numeric",…}
],
"locked": false
}

## NOTES

### Error Codes
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10014 - Application not found
IMP-10017 - Service not found
IMP-10133 - The URL {} does not exist in the profile

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66156.htm)



