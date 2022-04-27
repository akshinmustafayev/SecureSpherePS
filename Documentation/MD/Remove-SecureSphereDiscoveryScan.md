# Remove-SecureSphereDiscoveryScan

## SYNOPSIS
Deletes a discovery scan.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereDiscoveryScan [-DiscoveryName <String>] [<CommonParameters>]
```

## DESCRIPTION
Deletes a discovery scan.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereDiscoveryScan -DiscoveryName "discoveryScan1"
```

## PARAMETERS

### DiscoveryName
This parameter specifies discovery name to create.

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

## NOTES

### Error Codes
IMP-14013 - Discovery name not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/77726.htm)



