# Get-SecureSphereDBAllConnectionsForTag

## SYNOPSIS
Returns all connections tagged with a given tag.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBAllConnectionsForTag -TagName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns all connections tagged with a given tag.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBAllConnectionsForTag -TagName "someTag1"
```

## PARAMETERS

### TagName
This parameter specifies tag name.

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

### Response body
{
"objects":[
"{siteName}/{serverGroupName}/{dbServiceName}/DBConnectionName",
"{siteName}/{serverGroupName}/{dbServiceName}/DBConnectionName"
]
}

## NOTES

### Error Codes
IMP-10082 - Tag not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61719.htm)



