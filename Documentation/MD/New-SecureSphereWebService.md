# New-SecureSphereWebService

## SYNOPSIS
Creates a web service with the name indicated by the path parameter serviceName, under the given server group indicated by the path parameters siteName and serverGroupName.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereWebService -SiteName <String> -ServerGroupName <String> -WebServiceName <String> [-Ports <UInt32[]>] [-SslPorts <UInt32[]>] [-TrpMode] [<CommonParameters>]
```

### Parameter Set 2
```
New-SecureSphereWebService -SiteName <String> -ServerGroupName <String> -WebServiceName <String> [-Ports <UInt32[]>] [<CommonParameters>]
```

### Parameter Set 3
```
New-SecureSphereWebService -SiteName <String> -ServerGroupName <String> -WebServiceName <String> [-TrpMode] [<CommonParameters>]
```

### Parameter Set 4
```
New-SecureSphereWebService -SiteName <String> -ServerGroupName <String> -WebServiceName <String> [-SslPorts <UInt32[]>] [<CommonParameters>]
```

## DESCRIPTION
Creates a web service with the name indicated by the path parameter serviceName, under the given server group indicated by the path parameters siteName and serverGroupName.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereWebService -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -Ports @(1234, 754)
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the web service to create.

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
This parameter specifies the name of the parent server group of the web service to create.

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
This parameter specifies the name of the web service to create.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Ports
This parameter specifies the new web service ports list. Default set to 80.

```yaml
Type: UInt32[]
Parameter Sets: Parameter Set 1, Parameter Set 2
Aliases: none

Required: false
Position: named
Default Value: None
Accepted Values: 0-65535
Pipeline Input: False
```

### SslPorts
This parameter specifies the new web service SSL ports list. Default set to 443.

```yaml
Type: UInt32[]
Parameter Sets: Parameter Set 1, Parameter Set 4
Aliases: none

Required: false
Position: named
Default Value: 443
Accepted Values: 0-65535
Pipeline Input: False
```

### TrpMode
This parameter indicates that the service is running in Transparent Reverse Proxy mode. Default set to false.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1, Parameter Set 3
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
IMP-10005 - An item with this name already exists - please select a different name
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10019 - Port 80 has already been configured for a different service in this Server Group
IMP-10020 - Port must be between 1 and 65535
IMP-10086 - Cannot create the web service. The number of instances exceeds the system limitation
IMP-10181 - Port {PORT_NAME} has already been configured for this service

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61847.htm)



