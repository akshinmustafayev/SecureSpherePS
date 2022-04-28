# Get-SecureSphereLookupDataSetRecords

## SYNOPSIS
Returns data from a specified range of lookup data set rows.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereLookupDataSetRecords -DataSetName <String> [-From <UInt32>] [-To <UInt32>] [<CommonParameters>]
```

### Parameter Set 2
```
Get-SecureSphereLookupDataSetRecords -DataSetName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns data from a specified range of lookup data set rows.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereLookupDataSetRecords -DataSetName "employees" -From 1 -To 3
```

### EXAMPLE 2

```powershell
Get-SecureSphereLookupDataSetRecords -DataSetName "employees"
```

## PARAMETERS

### DataSetName
This parameter specifies the name of the lookup data set.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### From
This parameter specifies the first lookup data set row from which to return data. The default value is the first row of the lookup data set. When the method does not specify this parameter, the default value applies.

```yaml
Type: UInt32
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### To
This parameter specifies the last lookup data set row from which to return data. The default value is the last row of the lookup data set. When the method does not specify this parameter, the default value applies.

```yaml
Type: UInt32
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
"dataset-name" : "employees",
"number-of-records" : 3,
"records":[
{"Key":"351","User":"Jack Norton","Groups":["R&D","Finance","Supervisors"]},
{"Key":"572","User":"John Doe","Groups":"Admin"},
{"Key":"633","User":"Michael Jenkins","Groups":"Maintenance"}
]}

## NOTES

### Error Codes
IMP-10094 - No lookup data set with this name exists in the DB.
IMP-10016 - Values of parameters to or from are invalid. (to < 0, from < 1)

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61646.htm)



