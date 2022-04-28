# Get-SecureSphereAllWebOutboundKRPRules

## SYNOPSIS
Returns a list of all KRP Outbound rules indicated by the query parameter priority:
For the given web service, indicated by the path parameters siteName, serverGroupName and webServiceName
For the KRP inbound rule, indicated by the path parameters aliasName and gatewayPort and gatewayGroupName

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereAllWebOutboundKRPRules -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -GatewayGroupName <String> -AliasName <String> -GatewayPort <UInt32> [<CommonParameters>]
```

## DESCRIPTION
Returns a list of all KRP Outbound rules indicated by the query parameter priority:
For the given web service, indicated by the path parameters siteName, serverGroupName and webServiceName
For the KRP inbound rule, indicated by the path parameters aliasName and gatewayPort and gatewayGroupName

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereAllWebOutboundKRPRules -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -GatewayGroupName "myServerGroup" -AliasName "krp_alias" -GatewayPort 80
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the web application.

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
This parameter specifies the name of the parent server group of the web application.

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
This parameter specifies the name of the parent service of the web application.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### GatewayGroupName
This parameter specifies the name of the server group that contains the gateways on which the alias was created.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### AliasName
This parameter specifies the name of the alias that defines the inbound KRP rule.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### GatewayPort
This parameter specifies the port that defines the inbound KRP rule.

```yaml
Type: UInt32
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: UInt32
Pipeline Input: False
```

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
{
"outboundKrpRules": [
{
"priority":2,
"externalHost":"www.imperva.com",
"urlPrefix":"/login/",
"internalIpHost":"10.1.1.10",
"serverPort":80,
"validateServerCertificate":true,
"clientCertificate":"myLocalCertificate",
"serverSideSslSettings": "High Security RP Server Side SSL Settings"
},
{"priority":5,
"externalHost":"www.imperva.com",
"internalIpHost":"10.1.1.12",
"serverPort":1080,
"serverSideSslSettings": "High Security RP Server Side SSL Settings"
},]}

## NOTES

### Error Codes
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10013 - Gateway Group not found
IMP-10017 - Service not found
IMP-10051 - KRP alias not found
IMP-10053 - KRP inbound rule not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61886.htm)



