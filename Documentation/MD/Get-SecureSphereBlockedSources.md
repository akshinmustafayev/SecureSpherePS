# Get-SecureSphereBlockedSources

## SYNOPSIS
Get currently blocked sources ordered from older block to newer block.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereBlockedSources [<CommonParameters>]
```

## DESCRIPTION
Get currently blocked sources ordered from older block to newer block.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereBlockedSources
```

## PARAMETERS

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
"automaticReleaseTime": "2019-11-27 22:05:13",
"policy": "Web Correlation Policy",
"serverGroup": "zofim_sg_001"
}]

## NOTES

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/75968.htm)



