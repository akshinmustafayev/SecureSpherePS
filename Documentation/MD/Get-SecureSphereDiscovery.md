# Get-SecureSphereDiscovery

## SYNOPSIS
Returns the definition details for a discovery scan.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDiscovery [-DiscoveryName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns the definition details for a discovery scan.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDiscovery -DiscoveryName "discoveryScan1"
```

## PARAMETERS

### DiscoveryName
This parameter specifies discovery name.

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
...}

## NOTES

### Error Codes
IMP-14013 - Discovery name not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/77726.htm)



