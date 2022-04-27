# Get-SecureSphereDiscoveryResult

## SYNOPSIS
Returns discovery result details.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDiscoveryResult [-DiscoveryName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns discovery result details.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDiscoveryResult -DiscoveryName "discoveryScan1"
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
"servers": [{
"site": "Site1",
"ip": "10.100.3.184",
"services": [
{
"decision": "Undecided",
"port": 1521,
"service-type": "Oracle",
"database-credentials-scanned": "NotScanned",
"sensitive-data-found": "NotFound"
}],
"os-credentials-found": "NotScanned",
"server-group": "10.100.3.X",
"os-name": "Linux",
"os-version": "3.X",
"scan-result": "Found"
}],
"scan-name": "discoveryScan1",
"scan-date": "2018-11-29 12:03:03.0"
}

## NOTES

### Error Codes
IMP-14013 - Discovery name not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/77726.htm)



