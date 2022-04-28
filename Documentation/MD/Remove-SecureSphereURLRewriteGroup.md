# Remove-SecureSphereURLRewriteGroup

## SYNOPSIS
Delete a URL Rewrite Group.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereURLRewriteGroup -UrlRewriteGroupName <String> [<CommonParameters>]
```

## DESCRIPTION
Delete a URL Rewrite Group.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereURLRewriteGroup -UrlRewriteGroupName "some group name"
```

## PARAMETERS

### UrlRewriteGroupName
This parameter specifies the group name.

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

## NOTES

### Error Codes
IMP-10178 - The URL Rewrite Group {groupName} cannot be deleted since it is connected to Web Service {siteName} - {serverGroupName} - {webServiceName}.
IMP-10680 - URL Rewrite Group "{groupName}" not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69941.htm)



