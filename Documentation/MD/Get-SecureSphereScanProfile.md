# Get-SecureSphereScanProfile

## SYNOPSIS
This method returns scan profile details.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereScanProfile [-ProfileName <String>] [<CommonParameters>]
```

## DESCRIPTION
This method returns scan profile details.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereScanProfile -ProfileName "some profile"
```

## PARAMETERS

### ProfileName
This parameter specifies profile name to create.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
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
"data-types": ["Password"],
"data-sample-accuracy": "0.75",
"db-and-schemas-usage": "include",
"db-and-schemas": [
{"database": "db1", "schema": "any"},
{"database": "any", "schema": "schema1"}
]
"delay-between-queries": "0"
}

## NOTES

### Error Codes
IMP-14008 - Could not find profile name: {0}.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70890.htm)



