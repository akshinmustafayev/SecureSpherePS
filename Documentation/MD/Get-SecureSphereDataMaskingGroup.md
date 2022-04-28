# Get-SecureSphereDataMaskingGroup

## SYNOPSIS
Retrieves a Data Masking Group.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDataMaskingGroup -DataMaskingGroupName <String> [<CommonParameters>]
```

## DESCRIPTION
Retrieves a Data Masking Group.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDataMaskingGroup -DataMaskingGroupName "Some group"
```

## PARAMETERS

### DataMaskingGroupName
This parameter specifies the name of data masking group to get.

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
"dataMaskingObjects" : [{
"name": "data masking name ",
"match": "Full",
"searchInHttpParameters": false,
"searchInHttpHeaders": false,
"searchInHttpCookies": true,
"enabled": false,
"description":"This is the data masking description"
}]}

## NOTES

### Error Codes
IMP-14002 - Data masking group global object not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69949.htm)



