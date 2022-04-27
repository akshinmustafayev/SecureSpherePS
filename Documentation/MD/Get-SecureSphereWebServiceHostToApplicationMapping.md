# Get-SecureSphereWebServiceHostToApplicationMapping

## SYNOPSIS
Returns the Host to Application Mapping with the priority specified by path parameter priority in the service indicated by the path parameters siteName, serverGroupName and webServiceName.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereWebServiceHostToApplicationMapping -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -Priority <UInt32> [<CommonParameters>]
```

## DESCRIPTION
Returns the Host to Application Mapping with the priority specified by path parameter priority in the service indicated by the path parameters siteName, serverGroupName and webServiceName.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereWebServiceHostToApplicationMapping -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -Priority 1
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

### Priority
This parameter specifies priority of mapping to access.

```yaml
Type: UInt32
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
"host": "www.imperva.com",
"hostMatchType": "Exact",
"application": "Default Web Application" ,
"priority": 1
}

## NOTES

### Error Codes
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10014 - Application not Found
IMP-10017 - Service not found
IMP-10021 - Host to Application Mapping not found, when the priority is not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61854.htm)



