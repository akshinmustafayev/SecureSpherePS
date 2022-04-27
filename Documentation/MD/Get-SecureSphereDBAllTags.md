# Get-SecureSphereDBAllTags

## SYNOPSIS
Returns a list of all tags.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBAllTags [<CommonParameters>]
```

## DESCRIPTION
Returns a list of all tags. When the optional parameter tagPrefix is used, only tags that start with the specified string are returned.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBAllTags
```

## PARAMETERS

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
{"tags" : ["OracleAgents","SqlServerAgents"]}

## NOTES

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61675.htm)



