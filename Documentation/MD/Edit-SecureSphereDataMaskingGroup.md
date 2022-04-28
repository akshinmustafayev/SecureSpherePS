# Edit-SecureSphereDataMaskingGroup

## SYNOPSIS
Update a Data Masking Group.

## SYNTAX

### Parameter Set 1
```
Edit-SecureSphereDataMaskingGroup -DataMaskingGroupName <String> -DataMaskingObject <DataMaskingObject or custom Array or Json> [<CommonParameters>]
```

### Parameter Set 2 (Default)
```
Edit-SecureSphereDataMaskingGroup -DataMaskingGroupName <String> -DataMaskingObjects <DataMaskingObject[] or custom Array or Json> [<CommonParameters>]
```

## DESCRIPTION
Update a Data Masking Group.

## EXAMPLES

### EXAMPLE 1

```powershell
$DataMaskingObject = [DataMaskingObject]::new("Data masking name", "Full", "This is the data masking description", $false, $true, $false, $true)

Edit-SecureSphereDataMaskingGroup -DataMaskingGroupName "some_data_masking group" -DataMaskingObject $DataMaskingObject
```

### EXAMPLE 2

```powershell
$DataMaskingObject1 = [DataMaskingObject]::new("Data masking name1", "Full", "This is the data masking description1", $false, $true, $false, $true)
$DataMaskingObject2 = [DataMaskingObject]::new("Data masking name2", "Full", "This is the data masking description2", $false, $true, $false, $true)

[DataMaskingObject[]] $DataMaskingObjectList = @($DataMaskingObject1, $DataMaskingObject2)

Edit-SecureSphereDataMaskingGroup -DataMaskingGroupName "some_data_masking group" -DataMaskingObject $DataMaskingObjectList
```

## PARAMETERS

### DataMaskingGroupName
This parameter specifies the name of data masking group to create.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### DataMaskingObject
This parameter specifies the DataMaskingObject.

```yaml
Type: DataMaskingObject or custom Array or Json
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### DataMaskingObjects
This parameter specifies the array of DataMaskingObjects.

```yaml
Type: DataMaskingObject[] or custom Array or Json
Parameter Sets: Parameter Set 2
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
DataMaskingObject contains the following parameters:
1. name - String value
2. match - String value
3. description - String value
4. searchInHttpParameters - Boolean value
5. searchInHttpHeaders - Boolean value
6. searchInHttpCookies - Boolean value
7. enabled - Boolean value

Example:
$DataMaskingObject = [DataMaskingObject]::new("Data masking name", "Full", "This is the data masking description", $false, $true, $false, $true)

### Error Codes
IMP-14001 - Illegal Data masking group name
IMP-14002 - Data masking group global object not found
IMP-14003 - Wrong or non-existing data masking match: {0}
IMP-14004 - The same data masking has been used multiple times: {0}

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69947.htm)



