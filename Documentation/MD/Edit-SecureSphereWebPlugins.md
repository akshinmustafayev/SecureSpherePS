# Edit-SecureSphereWebPlugins

## SYNOPSIS
Updates the list of plugins of a web service (allows creating plugins, deleting plugins and updating existing plugins)

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereWebPlugins -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -WebServicePlugin <WebServicePlugin> [<CommonParameters>]
```

### Parameter Set 2
```
Edit-SecureSphereWebPlugins -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -WebServicePlugins <WebServicePlugin[]> [<CommonParameters>]
```

## DESCRIPTION
Updates the list of plugins of a web service (allows creating plugins, deleting plugins and updating existing plugins)

## EXAMPLES

### EXAMPLE 1

```powershell
$WebServicePlugin = [WebServicePlugin]::new()
$WebServicePlugin.PluginType = "Special Parameter Delimiter"
$WebServicePlugin.PluginOrder = 1
$WebServicePlugin.Separator = "+"

Edit-SecureSphereWebPlugins -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -WebServicePlugin $WebServicePlugin
```

### EXAMPLE 2

```powershell
$WebServicePlugin1 = [WebServicePlugin]::new()
$WebServicePlugin1.PluginType = "Special Parameter Delimiter"
$WebServicePlugin1.PluginOrder = 1
$WebServicePlugin1.Separator = "+"

$WebServicePlugin2 = [WebServicePlugin]::new()
$WebServicePlugin2.PluginType = "Parameter to URL"
$WebServicePlugin2.PluginOrder = 2
$WebServicePlugin2.PathPrefix = "/dispatcher"
$WebServicePlugin2.PrefixParam = "menuid"
$WebServicePlugin2.DirParam = "nextpageid"

[WebServicePlugin[]] $WebServicePluginList = @($WebServicePlugin1, $WebServicePlugin2)

Edit-SecureSphereWebPlugins -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -WebServicePlugins $WebServicePluginList
```

## PARAMETERS

### SiteName
This parameter specifies the site containing the server group.

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
This parameter specifies the server group containing the web service.

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
This parameter specifies the web service of which the plugins will be returned.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### WebServicePlugin
This parameter specifies WebServicePlugin type object.

```yaml
Type: WebServicePlugin
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### WebServicePlugins
This parameter specifies WebServicePlugin type of objects.

```yaml
Type: WebServicePlugin[]
Parameter Sets: Parameter Set 2
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

### WebServicePlugin
WebServicePlugin
1. PluginType - String type. The type of plugin. Expected values: "URL to Parameter", "Parameter to URL", "Parameter Modification", "Special Parameter Delimiter", "Parameter Coupling", "Custom Plugin"
2. PluginOrder - UInt32 type. Execution order of this plugins among all the plugins
3. PathRegexp - String type. Relevant only to URL To Parameter (u2p) plugin.
4. PathReplace - String type. Relevant only to URL To Parameter (u2p) plugin.
5. ParamValue - String type. Relevant only to URL To Parameter (u2p) plugin.
6. ParamName - String type. Relevant only to URL To Parameter (u2p) plugin.
7. PathPrefix - String type. Relevant to plugins: Parameter URL Url (p2u), Parameter Modification (p2p), Parameter Coupling
8. PrefixParam - String type. Relevant only to URL To Parameter (u2p) plugin.
9. SuffixParam - String type. Must be a string of length 1 or empty. Relevant only to URL To Parameter (u2p) plugin.
10. DirParam - String type. Relevant only to URL To Parameter (u2p) plugin.
11. SuffixDelimiter - String type. Relevant only to URL To Parameter (u2p) plugin.
12. ParameterRegex - String type. Relevant only to Parameter Modification (p2p) plugin.
13. ParameterRewrite - String type. Relevant only to Parameter Modification (p2p) plugin.
14. NameRegex - String type. Relevant only to Parameter Coupling plugin.
15. ValueRegex - String type. Relevant only to Parameter Coupling plugin.
16. Separator - String type. Separator must be a string of length 1 or empty. Relevant only to Special Parameter Delimiter (web-separator) plugin
17. Name - String type. Relevant only to Custom plugin. Expected values: "hpl_u2p", "hpl_p2u", "hpl_p2p", "hpl_web_separator", "hpl_param_coupling"
18. Config - String type. Relevant only to Custom plugin.

Example: 
$WebServicePlugin = [WebServicePlugin]::new()
$WebServicePlugin.PluginType = "Special Parameter Delimiter"
$WebServicePlugin.PluginOrder = 1
$WebServicePlugin.Separator = "+"

### WebServicePlugin
IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10015 - Can not create {OBJECT_NAME} since the body parameter {MISSING_PARAMETER} is missing
IMP-10017 - Service not found
IMP-10141 - Value must be greater than or equal to {MIN_VALUE}
IMP-10144 - Value must be less than or equal to {MAX_VALUE}
IMP-10145 - Field length must be between {MIN_VALUE} and {MAX_VALUE}
IMP-12918 - The same order has been used twice. Please modify the order so that each plugin has a unique order.
IMP-12919 - You have reached the plugin size limit ({MAX_PLUGINS_NUMBER} plugins)
IMP-12920 - No plugin named {NON_EXISTING_PLUGIN_NAME} exists
IMP-12921 - Version 9.5 and above do not support the plugin hpl_u2pp. Please use the URL to Parameter plugin. The order of plugins is customizable.
IMP-12922 - Selected plugin type does not support field(s): {UNSUPPORTED_FIELDS}
IMP-12923 - Specified plugin type(s) were not found: {NON_EXISTING_PLUGIN_TYPES}

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66816.htm)



