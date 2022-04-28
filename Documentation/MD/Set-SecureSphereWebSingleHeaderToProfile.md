# Set-SecureSphereWebSingleHeaderToProfile

## SYNOPSIS
Sets a WebProfileHeader object that represents a single Header in the profile.

## SYNTAX

### Parameter Set 1 (Default)
```
Set-SecureSphereWebSingleHeaderToProfile -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -WebApplicationName <String> -WebProfileHeader <WebProfileHeader> [<CommonParameters>]
```

## DESCRIPTION
Sets a WebProfileHeader object that represents a single Header in the profile.

## EXAMPLES

### EXAMPLE 1

```powershell
$WebProfileHeader = [WebProfileHeader]::new()
$WebProfileHeader.HeaderName = "some_header"
$WebProfileHeader.Base64Encoded = $true

Set-SecureSphereWebSingleHeaderToProfile -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -WebApplicationName "Official-Website" -WebProfileHeader $WebProfileHeader
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

### WebProfileHeader
This parameter specifies the Header content.

```yaml
Type: WebProfileHeader
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
WebProfileHeader
1. HeaderName - String type. Required.
2. Base64Encoded - Boolean type. Default is false.

Example:
$WebProfileHeader = [WebProfileHeader]::new()
$WebProfileHeader.[attribute] = [value]

### Error Codes
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10014 - Application not found
IMP-10015 - Cannot create { } since the body parameter { } is missing
IMP-10017 - Service not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70190.htm)



