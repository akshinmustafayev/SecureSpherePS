# Get-SecureSphereLookupDataSetColumns

## SYNOPSIS
Returns the column information for a lookup data set.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereLookupDataSetColumns -DataSetName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns the column information for a lookup data set.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereLookupDataSetColumns -DataSetName "employees"
```

## PARAMETERS

### DataSetName
This parameter specifies the name of the lookup data set.

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
"dataset-name" : "employees",
"number-of-columns" : 3,
"columns":[
{"name":"Key","key":"true"},
{"name":"User","key":"false"},
{"name":"Groups","key":"false"}
]}

## NOTES

### Error Codes
IMP-10094 - No lookup data set with this name exists in the DB.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61645.htm)



