# New-SecureSphereIPGroup

## SYNOPSIS
Create an IP Group.

## SYNTAX

### Parameter Set 1
```
New-SecureSphereIPGroup -IPGroupName <String> -IPEntry <IPEntry or custom Array or Json> [<CommonParameters>]
```

### Parameter Set 2 (Default)
```
New-SecureSphereIPGroup -IPGroupName <String> -IPEntries <IPEntry[] or custom Array or Json> [<CommonParameters>]
```

## DESCRIPTION
Create an IP Group.

## EXAMPLES

### EXAMPLE 1

```powershell
$IPEntry = [IPEntry]::new()
$IPEntry.Type = "range"
$IPEntry.IpAddressFrom = "4.3.2.1"
$IPEntry.IpAddressTo = "8.7.6.5"

New-SecureSphereIPGroup -IPGroupName "some group name" -IPEntry $IPEntry
```

### EXAMPLE 2

```powershell
$IPEntry1 = [IPEntry]::new()
$IPEntry1.Type = "range"
$IPEntry1.IpAddressFrom = "4.3.2.1"
$IPEntry1.IpAddressTo = "8.7.6.5"

$IPEntry2 = [IPEntry]::new()
$IPEntry2.Type = "range"
$IPEntry2.IpAddressFrom = "1.2.3.4"
$IPEntry2.IpAddressTo = "5.6.7.8"

[IPEntry[]] $IPEntryList = @($IPEntry1, $IPEntry2)

New-SecureSphereIPGroup -IPGroupName "some_data_ip group name" -IPEntries $IPEntryList
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
2. ipAddressFrom - String value. Start IP address (example: 192.168.25.35). Mandatory for types: single, range.
3. ipAddressTo - String value. End IP address (example: 192.168.25.35). Mandatory for types: range.
4. networkAddress - String value. Network address (example: 192.168.25.35). Mandatory for type: network.
5. cidrMask - UInt32 value. Network significant bits (/n). Mandatory for type: network. Value must be between 0-32.

Note: Parameter Operation is needed for Edit-SecureSphereIPGroupEntries cmdlet. Do not use it in this cmdlet.

Example:
$IPEntry = [IPEntry]::new()
$IPEntry.Type = "range"
$IPEntry.IpAddressFrom = "4.3.2.1"
$IPEntry.IpAddressTo = "8.7.6.5"

### Error Codes
IMP-10005 - An item with this name already exists - please select a different name
IMP-10016 - The "paramName" entered is illegal

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69928.htm)



