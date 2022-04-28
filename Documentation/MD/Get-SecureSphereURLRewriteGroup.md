# Get-SecureSphereURLRewriteGroup

## SYNOPSIS
Get a list of the rules in the requested URL Rewrite group.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereURLRewriteGroup -UrlRewriteGroupName <String> [<CommonParameters>]
```

## DESCRIPTION
Get a list of the rules in the requested URL Rewrite group.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereURLRewriteGroup -UrlRewriteGroupName "some group name"
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

### Response Body
{
"rules": [
{
"name": "bingToGoogle",
"priority": 1,
"matchCriteria": [{
"type": "authenticatedSession",
"value": "no"
},{
"values": [
"druid",
"mage"
],
"type": "httpRequestUrl",
"operation": "atLeastOne",
"match": "prefix"
}],
"hostToFind": "bing",
"hostToReplace": "google",
"pathToFind": "search",
"pathToReplace": "query",
"applyTo": "Request",
"redirect": "NoRedirect",
"enabled": true
}]}

## NOTES

### Error Codes
IMP-10601 - URL Rewrite Group "{groupName}" not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69943.htm)



