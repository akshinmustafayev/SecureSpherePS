# Get-SecureSphereReleasedSources

## SYNOPSIS
Get recently released sources ordered from older release to newer release.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereReleasedSources [<CommonParameters>]
```

### Parameter Set 2
```
Get-SecureSphereReleasedSources [-Hours <UInt32>] [<CommonParameters>]
```

## DESCRIPTION
Get recently released sources ordered from older release to newer release.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereReleasedSources -Hours 48
```

## PARAMETERS

### Hours
If set, hours = N, the API response will include the sources released in the last N hours. Default value is 72.

```yaml
Type: UInt32
Parameter Sets: Parameter Set 2
Aliases: none

Required: false
Position: named
Default Value: 72
Pipeline Input: False
```

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
[{
"blockedBy": "IP",
"ipAddress": "1.1.97.88",
"blockingTime": "2019-11-27 22:01:53",
"eventCount": 1,
"lastEventTime": "2019-11-27 22:01:53",
"automaticReleaseTime": "2019-11-27 22:04:53",
"policy": "Web Correlation Policy",
"serverGroup": "zofim_sg_001"
},{
"blockedBy": "IP",
"ipAddress": "1.1.97.89",
"blockingTime": "2019-11-27 22:02:13",
"eventCount": 1,
"lastEventTime": "2019-11-27 22:02:13",
"manualReleaseTime": "2019-11-27 22:05:13",
"policy": "Web Correlation Policy",
"serverGroup": "zofim_sg_001"
}]

## NOTES

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/75969.htm)



