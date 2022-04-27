# Edit-SecureSphereIPGroupEntries

## SYNOPSIS
Add or remove rows in an IP Group indicated by the path parameter ipGroupName.

## SYNTAX

### Parameter Set 1
```
Edit-SecureSphereIPGroupEntries -IPGroupName <String> -IPEntry <IPEntry or custom Array or Json> [<CommonParameters>]
```

### Parameter Set 2 (Default)
```
Edit-SecureSphereIPGroupEntries -IPGroupName <String> -IPEntries <IPEntry[] or custom Array or Json> [<CommonParameters>]
```

## DESCRIPTION
Add or remove rows in an IP Group indicated by the path parameter ipGroupName. The server is not responsible to ignore conflicting operations. This means that if the same entry is added and removed in the same API call, no operation is performed on the IP Group. Each change to IP Group is sent to the gateway. Therefore, add or remove operations should be performed in a bulk operation and not in a single operation for each entry.

## EXAMPLES

### EXAMPLE 1

```powershell
$IPEntry = [IPEntry]::new()
$IPEntry.Operation = "add"
$IPEntry.Type = "network"
$IPEntry.NetworkAddress = "10.10.0.0"
$IPEntry.CidrMask = 24

Edit-SecureSphereIPGroupEntries -IPGroupName "some_data_ip group name" -IPEntry $IPEntry
```

### EXAMPLE 2

```powershell
$IPEntry1 = [IPEntry]::new()
$IPEntry1.Operation = "add"
$IPEntry1.Type = "network"
$IPEntry1.NetworkAddress = "10.10.0.0"
$IPEntry1.CidrMask = 24

$IPEntry2 = [IPEntry]::new()
$IPEntry2.Operation = "add"
$IPEntry2.Type = "network"
$IPEntry2.NetworkAddress = "10.10.0.1"
$IPEntry2.CidrMask = 24

[IPEntry[]] $IPEntryList = @($IPEntry1, $IPEntry2)

Edit-SecureSphereIPGroupEntries -IPGroupName "some_data_ip group name" -IPEntries $IPEntryList
```

## PARAMETERS

### IPGroupName
This parameter specifies the name of the IP Group.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### IPEntry
This parameter specifies the IPEntry.

```yaml
Type: IPEntry or custom Array or Json
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### IPEntries
This parameter specifies the array of IPEntries.

```yaml
Type: IPEntry[] or custom Array or Json
Parameter Sets: Parameter Set 2
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

## NOTES

### Error Codes
IPEntry contains the following parameters:
1. type - String value. Type of address. May accept only these (3) parameters: "single" ; "range" ; "network".
2. operation - String value. Operation to apply on the entry. May accept only these (2) parameters: "add" ; "remove".
3. ipAddressFrom - String value. Start IP address (example: 192.168.25.35). Mandatory for types: single, range.
4. ipAddressTo - String value. End IP address (example: 192.168.25.35). Mandatory for types: range.
5. networkAddress - String value. Network address (example: 192.168.25.35). Mandatory for type: network.
6. cidrMask - UInt32 value. Network significant bits (/n). Mandatory for type: network. Value must be between 0-32.

Example:
$IPEntry = [IPEntry]::new()
$IPEntry.Operation = "add"
$IPEntry.Type = "network"
$IPEntry.NetworkAddress = "10.10.0.0"
$IPEntry.CidrMask = 24

### Error Codes
IMP-10016 - The "value" entered is illegal
IMP-10056 - Body parameter "paramName" is missing
IMP-10601 - IP group name not found
IMP-10602 - IP entry not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69950.htm)



