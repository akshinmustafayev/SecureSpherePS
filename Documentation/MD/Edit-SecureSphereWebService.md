# Edit-SecureSphereWebService

## SYNOPSIS
Updates the web service indicated by the path parameters siteName, serverGroupName and serviceName. The web service attributes that can be updated are listed below.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereWebService -SiteName <String> -ServerGroupName <String> -WebServiceName <String> [-NewName <String>] [-Ports <UInt32[]>] [-SslPorts <UInt32[]>] [-DefaultApplication <String>] [-TrpMode] [<CommonParameters>]
```

### Parameter Set 2
```
Edit-SecureSphereWebService -SiteName <String> -ServerGroupName <String> -WebServiceName <String> [-NewName <String>] [<CommonParameters>]
```

### Parameter Set 3
```
Edit-SecureSphereWebService -SiteName <String> -ServerGroupName <String> -WebServiceName <String> [-Ports <UInt32[]>] [-SslPorts <UInt32[]>] [<CommonParameters>]
```

## DESCRIPTION
Updates the web service indicated by the path parameters siteName, serverGroupName and serviceName. The web service attributes that can be updated are listed below.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereWebService -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -NewName "Orders" -Ports @(80, 8080) -DefaultApplication "WebStore-MainApp"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the web service to update.

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
This parameter specifies the name of the parent server group of the web service to update.

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
This parameter specifies the name of the web service to update.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### NewName
This parameter specifies the new web service name.

```yaml
Type: String
Parameter Sets: Parameter Set 1, Parameter Set 2
Aliases: none

Required: false
Position: named
Default Value: 80
Pipeline Input: False
```

### Ports
This parameter specifies the new web service ports list. Default set to 80.

```yaml
Type: UInt32[]
Parameter Sets: Parameter Set 1, Parameter Set 3
Aliases: none

Required: false
Position: named
Default Value: 80
Accepted Values: 0-65535
Pipeline Input: False
```

### SslPorts
This parameter specifies the new web service SSL ports list. Default set to 443.

```yaml
Type: UInt32[]
Parameter Sets: Parameter Set 1, Parameter Set 3
Aliases: none

Required: false
Position: named
Default Value: 443
Accepted Values: 0-65535
Pipeline Input: False
```

### DefaultApplication
This parameter specifies the application that new service is mapped to by default.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: 443
Pipeline Input: False
```

### TrpMode
This parameter indicates that the service is running in Transparent Reverse Proxy mode. Default set to false.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: false
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
IMP-10014 - Application not found
IMP-10017 - Service not found
IMP-10019 - Port has already been configured for a different service in this Server Group
IMP-10020 - Port must be between 1 and 65535
IMP-10071 - Name field must be populated
IMP-10086 - Cannot create the web service, the number of Instances exceeds the system limitation
IMP-10145 - Field length must be between 1 and 200
IMP-10181 - Port {PORT_NAME} has already been configured for this service

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61850.htm)



