# Get-SecureSphereDBDataEnrichmentPolicy

## SYNOPSIS
Returns the details of a data enrichment policy.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBDataEnrichmentPolicy -PolicyName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns the details of a data enrichment policy.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBAllDataEnrichmentPolicies
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
"rules": [
{
"type": "custom",
"enabled": false,
"groups": {
"attribute": "Groups",
"source-event-field": "Application User",
"lookup-data-set": "User Roles - From Active Directory (no domain)"
},
"target-field-name": "SourceIP\|user",
"extraction-method": "Lookup From Data Set",
"retention-definitions": {
"ttl": 3600,
"relative-order": 3,
"override-existing-values": true,
"tagging-scope": "Event"
}},{
"type": "custom",
"enabled": true,
"query": "select \* from aaa1",
"operation": "Set",
"target-field-name": "SourceIP\|user",
"extraction-method": "From Event SQL",
"value-index": 1,
"retention-definitions": {
"ttl": 3600,
"relative-order": 2,
"override-existing-values": true,
"tagging-scope": "Event"
},
"additional-conditions": {}
},{
"type": "custom",
"enabled": true,
"groups": {
"source-event-field": "Database User Names"
},
"target-field-name": "SourceIP\|user",
"extraction-method": "Lookup From Data Set",
"retention-definitions": {
"ttl": 3600,
"relative-order": 1,
"override-existing-values": true,
"tagging-scope": "Event"
}}],
"policy-name": "myEnrichmentPolicy",
"policy-type": "db",
"apply-to": [
"mySite/myServerGroup/ora3",
"Default Site/SG2/MySQL2",
"mySite/myServerGroup/tera3"
],
"match-criteria": [
{
"type": "simple",
"name": "Event Type",
"operation": "Equals",
"values": [
{
"value": "Login"
}],
"handle-unknown-values": false
}]}

## NOTES

### Error Codes
IMP-10033 - Policy not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70925.htm)



