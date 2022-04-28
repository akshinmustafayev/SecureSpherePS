# Invoke-SecureSphereReleaseBlockedSources

## SYNOPSIS
Release blocked sources by IP, session or user.

## SYNTAX

### Parameter Set 1
```
Invoke-SecureSphereReleaseBlockedSources -BlockedSource <BlockedSource> [<CommonParameters>]
```

### Parameter Set 2 (Default)
```
Invoke-SecureSphereReleaseBlockedSources -BlockedSources <BlockedSource[]> [<CommonParameters>]
```

## DESCRIPTION
Release blocked sources by IP, session or user.

## EXAMPLES

### EXAMPLE 1

```powershell
$BlockedSource = [BlockedSource]::new()
$BlockedSource.BlockedBy = "IP"
$BlockedSource.IpAddress = "2.2.2.2"
$BlockedSource.BlockingTime = "2019-11-27 22:01:53"
$BlockedSource.EventCount = 1
$BlockedSource.LastEventTime = "2019-11-27 22:01:53"
$BlockedSource.AutomaticReleaseTime = "2019-11-27 22:04:53"
$BlockedSource.Policy = "Web Correlation Policy"
$BlockedSource.ServerGroup = "zofim_sg_001"

Invoke-SecureSphereReleaseBlockedSources -BlockedSource $BlockedSource
```

### EXAMPLE 2

```powershell
$BlockedSource1 = [BlockedSource]::new()
$BlockedSource1.BlockedBy = "IP"
$BlockedSource1.IpAddress = "1.1.1.1"
$BlockedSource1.BlockingTime = "2019-11-27 22:01:53"
$BlockedSource1.EventCount = 1
$BlockedSource1.LastEventTime = "2019-11-27 22:01:53"
$BlockedSource1.AutomaticReleaseTime = "2019-11-27 22:04:53"
$BlockedSource1.Policy = "Web Correlation Policy"
$BlockedSource1.ServerGroup = "zofim_sg_001"

$BlockedSource2 = [BlockedSource]::new()
$BlockedSource2.BlockedBy = "IP"
$BlockedSource2.IpAddress = "2.2.2.2"
$BlockedSource2.BlockingTime = "2019-11-27 22:02:13"
$BlockedSource2.EventCount = 1
$BlockedSource2.LastEventTime = "2019-11-27 22:02:13"
$BlockedSource2.AutomaticReleaseTime = "2019-11-27 22:05:13"
$BlockedSource2.Policy = "Web Correlation Policy"
$BlockedSource2.ServerGroup = "zofim_sg_001"

[BlockedSource[]] $BlockedSourceList = @($BlockedSource1, $BlockedSource2)

Invoke-SecureSphereReleaseBlockedSources -BlockedSources $BlockedSourceList
```

## PARAMETERS

### BlockedSource
This parameter specifies the BlockedSource.

```yaml
Type: BlockedSource
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### BlockedSources
This parameter specifies the array of BlockedSource.

```yaml
Type: BlockedSource[]
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
BlockedSource contains the following parameters:
1. BlockedBy - String value. Was the source blocked by IP, user or session. String ∈ {ipAddress, user, sessionId}.
2. IpAddress - String value. If was blocked by IP, this is the IP it was blocked by. Otherwise it will be null. 
3. User - String value. If was blocked by user, this is the user it was blocked by. Otherwise it will be null.
4. SessionId - String value. If was blocked by session, this is the session’s id it was blocked by. Otherwise it will be null.
5. BlockingTime - String value. When was the source blocked.
6. EventCount - String value. How many violations made under this blocked source.
7. LastEventTime - String value. When was the last violation.
8. AutomaticReleaseTime - String value. If the source was released automatically, when did it happen.
9. AlertNumber - UInt32 value. How many alerts for the blocked source.
10. Policy - String value. What was the policy’s name it was blocked by.
11. ServerGroup - String value. The server group the policy was set on.

Example:
$BlockedSource = [BlockedSource]::new()
$BlockedSource.BlockedBy = "IP"
$BlockedSource.IpAddress = "2.2.2.2"
$BlockedSource.BlockingTime = "2019-11-27 22:01:53"
$BlockedSource.EventCount = 1
$BlockedSource.LastEventTime = "2019-11-27 22:01:53"
$BlockedSource.AutomaticReleaseTime = "2019-11-27 22:04:53"
$BlockedSource.Policy = "Web Correlation Policy"
$BlockedSource.ServerGroup = "zofim_sg_001"

### Error Codes
IMP-10010 - Invalid IP address. Please enter a valid IP address, then try again.
IMP-10202 - The request's body can have only one param in addition to policy.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/75970.htm)



