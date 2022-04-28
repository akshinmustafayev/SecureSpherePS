# New-SecureSphereAssessmentPolicy

## SYNOPSIS
Creates an assessment policy.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereAssessmentPolicy -PolicyName <String> -Description <String> -DBType <String> -PolicyTags <String[]> -TestNames <String[]> [<CommonParameters>]
```

## DESCRIPTION
Creates an assessment policy.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereAssessmentPolicy -PolicyName "assess-policy-11" -Description "1234" -DBType "Oracle" -PolicyTags @("tag1", "tag2", "tag3") -TestNames @("User sessions must be terminated upon user logout (Using SQLNET.EXPIRE_TIME)", "Default Password is Set for User SPATIAL_CSW_ADMIN_USR", "CVE-2007-5505:Multiple unspecified vulnerabilities in Oracle Database-DB02", "custom-test9", "Replication Management buffer overflow: RECTIFY", "PUBLIC has Access to DBMS_STREAMS_RPC Package")
```

## PARAMETERS

### PolicyName
This parameter specifies policy name to create.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Description
This parameter specifies description.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### DBType
This parameter specifies database type.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### PolicyTags
This parameter specifies policy tags.

```yaml
Type: String[]
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### TestNames
This parameter specifies test names.

```yaml
Type: String[]
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

## NOTES

### Error Codes
IMP-10008 - Policy already exists

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61707.htm)



