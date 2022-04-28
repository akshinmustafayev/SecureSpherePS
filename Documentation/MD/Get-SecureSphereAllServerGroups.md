# Get-SecureSphereAllServerGroups

## SYNOPSIS
Returns a list of all server group names under the site with the name indicated by the path parameter siteName.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereAllServerGroups -SiteName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a list of all server group names under the site with the name indicated by the path parameter siteName.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereAllServerGroups -SiteName "Denver"
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the server group to access.

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
"server-groups":["sg1", "sg2", "sg3"]
}

## NOTES

### Error Codes
IMP-10006 - Site not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61631.htm)



