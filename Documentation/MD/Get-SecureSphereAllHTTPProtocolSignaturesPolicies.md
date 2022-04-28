# Get-SecureSphereAllHTTPProtocolSignaturesPolicies

## SYNOPSIS
Retrieves the http protocol signatures policy, indicated by the path parameter: policyName.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereAllHTTPProtocolSignaturesPolicies [<CommonParameters>]
```

## DESCRIPTION
Retrieves the http protocol signatures policy, indicated by the path parameter: policyName.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereAllHTTPProtocolSignaturesPolicies
```

## PARAMETERS

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
{
"policies":[
"Recommended Policy for Web Applications - Legacy",
"Recommended Signatures Policy for SharePoint Applications",
"Recommended Signatures Policy for Web Applications",
"ThreatRadar - Emergency - Authenticated Sessions Signatures",
"ThreatRadar - Emergency - Detection Signatures",
"ThreatRadar - Emergency - GET Requests Signatures",
"ThreatRadar - Emergency - General Signatures",
"ThreatRadar - Emergency - POST Requests Signatures",
"ThreatRadar - Remote File Inclusion (RFI) Signatures",
"ThreatRadar - Spamdexing Signatures",
"My Http Protocol Signatures Policy"
]}

## NOTES

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66854.htm)



