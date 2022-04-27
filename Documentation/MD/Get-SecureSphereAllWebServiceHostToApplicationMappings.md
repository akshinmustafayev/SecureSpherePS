# Get-SecureSphereAllWebServiceHostToApplicationMappings

## SYNOPSIS
Returns a list of Host to Application Mappings for the Web Service indicated by the path parameters siteName, serverGroupName and webServiceName.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereAllWebServiceHostToApplicationMappings -SiteName <String> -ServerGroupName <String> -WebServiceName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a list of Host to Application Mappings for the Web Service indicated by the path parameters siteName, serverGroupName and webServiceName.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereWebServiceHostToApplicationMapping -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the web application to get.

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
This parameter specifies the name of the parent server group of the web application to get.

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
This parameter specifies the name of the parent service of the web application to get.

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
"hostToAppMappings":[{
"host":"host2",
"hostMatchType":"Exact",
"application":"Default Web Application",
"priority":1
},
{"host":"myhost",
"hostMatchType":"Suffix",
"application":"myApp",
"priority":2}]}

## NOTES

### Error Codes
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10017 - Service not found
IMP-10021 - Host to Application Mapping not found, when the priority is not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61855.htm)



