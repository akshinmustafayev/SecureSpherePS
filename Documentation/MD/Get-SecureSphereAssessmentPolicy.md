# Get-SecureSphereAssessmentPolicy

## SYNOPSIS
Returns the details of an assessment policy.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereAssessmentPolicy -PolicyName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns the details of an assessment policy.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereAssessmentPolicy -PolicyName "assess-policy-11"
```

## PARAMETERS

### PolicyName
This parameter specifies policy name to return.

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
"name": "assess-policy-11",
"description": "1234",
"db-type": "Oracle",
"policy-tags":
[
"tag1", "tag2","tag10"
],
"test-names":
[
"User sessions must be terminated upon user logout (Using SQLNET.EXPIRE_TIME)",
"Default Password is Set for User SPATIAL_CSW_ADMIN_USR", "CVE-2007-5505:Multiple unspecified vulnerabilities in Oracle Database-DB02", "custom-test9","Replication Management buffer overflow: RECTIFY",
"PUBLIC has Access to DBMS_STREAMS_RPC Package"
]
}

## NOTES

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70802.htm)



