# Get-SecureSphereDBTableGroupsConfiguration

## SYNOPSIS
Retrieves the list of the currently configured table groups. Upon successful completion, the response body will include the list of the currently configured Table Groups.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBTableGroupsConfiguration [<CommonParameters>]
```

## DESCRIPTION
Retrieves the list of the currently configured table groups. Upon successful completion, the response body will include the list of the currently configured Table Groups.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBTableGroupsConfiguration
```

## PARAMETERS

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
[
{ "isSensitive": true, "serviceTypes": [ "MariaDB" ], "displayName": "MariaDB System Object" },
{ "isSensitive": true, "serviceTypes": [ "Netezza" ], "displayName": "Netezza System Object (Sensitive)" }…
]

## NOTES

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/65839.htm)



