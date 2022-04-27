# Get-SecureSphereDBTableGroupRecords

## SYNOPSIS
Returns all data in a table group, ordered according to table name.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBTableGroupRecords -TableGroupName <String> [-From <UInt32>] [-To <UInt32>] [<CommonParameters>]
```

### Parameter Set 2
```
Get-SecureSphereDBTableGroupRecords [-TableGroupName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns all data in a table group, ordered according to table name.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBTableGroupRecords -TableGroupName "my_table_group" -From 1 -To 3
```

### EXAMPLE 2

```powershell
Get-SecureSphereDBTableGroupRecords -TableGroupName "my_table_group"
```

## PARAMETERS

### TableGroupName
This parameter specifies the name of the table group.

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
This parameter specifies the first table group entry from which to return data. The default value is the first entry. When the method does not specify this parameter, the default value applies.

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
This parameter specifies the last table group entry from which to return data. The default value is the last entry. When the method does not specify this parameter, the default value applies.

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
"tablegroup-name" : "my_table_group",
"number-of-records" : 3,
"records":[
{"Name":"table1","Type":"Table","Columns":["col1","col2"]},
{"Name":"table2","Type":"View"},
{"Name":"table3","Type":"Synonym","Columns":"col1"}
]}

## NOTES

### Error Codes
IMP-12201 - No table group with this name exists in the DB
IMP-10016 - When values of parameters 'to' or 'from' are invalid (to < 0, from < 1)

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66052.htm)



