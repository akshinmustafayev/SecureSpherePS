# Get-SecureSphereFirewallPolicy

## SYNOPSIS
Return a Firewall Policy indicated by the path parameter policyName.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereFirewallPolicy -PolicyName <String> [<CommonParameters>]
```

## DESCRIPTION
Return a Firewall Policy indicated by the path parameter policyName.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereFirewallPolicy -PolicyName "policy 1"
```

## PARAMETERS

### PolicyName
This parameter specifies the name of the policy.

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

### Response Body
{
"enabled": "true",
"severity": "low",
"action": "none",
"allowAppServicePorts": "false",
"establishedConnectionsBlock": "false",
"sendToCd": "true",
"inboundOperation": "block",
"outboundOperation":"block",
"rules":[{"direction":"inbound","protocol":"any-tcp","ipGroup":"All Search Engines"},…],
"applyTo":[{"siteName":"Production Site","serverGroupName":"Orders"},…]
}

## NOTES

### Error Codes
IMP-10033 - Policy not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61897.htm)



