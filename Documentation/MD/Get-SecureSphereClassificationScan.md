# Get-SecureSphereClassificationScan

## SYNOPSIS
This method returns classification scan details.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereClassificationScan [-ScanName <String>] [<CommonParameters>]
```

## DESCRIPTION
This method returns classification scan details.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereClassificationScan -ScanName "some scan"
```

## PARAMETERS

### ScanName
This parameter specifies scan name.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
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
"profile-name": "some profile name,
"apply-to":[
"conf/dbServices/site1/sg1/service1/dbConnections/connection1",
"conf/dbServices/site1/sg1/service1/dbConnections/connection2"
],
"scheduling": {
"frequency": "Once",
"once": {
"at-date": "04/19/2018",
"at-time": "2:00 AM"
}
}
}

## NOTES

### Error Codes
IMP-14007 - Could not find "assessment" scan name: {1}.
IMP-14011 - The scan name you entered already exists in more than one scan. Change the name of your scan so that it is unique.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70890.htm)



