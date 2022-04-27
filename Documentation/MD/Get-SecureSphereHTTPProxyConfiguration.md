# Get-SecureSphereHTTPProxyConfiguration

## SYNOPSIS
Returns the http proxy configuration.

## SYNTAX

### Parameter Set 1
```
Get-SecureSphereHTTPProxyConfiguration [<CommonParameters>]
```

## DESCRIPTION
Returns the http proxy configuration.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereHTTPProxyConfiguration
```

## PARAMETERS

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
{
"useProxy": true,
"host": "10.101.10.10",
"port": 4343,
"user": "admin",
"authPolicy": "Basic"
}

## NOTES

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70376.htm)



