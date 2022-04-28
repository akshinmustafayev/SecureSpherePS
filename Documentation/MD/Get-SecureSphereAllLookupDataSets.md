# Get-SecureSphereAllLookupDataSets

## SYNOPSIS
Returns a list of the names of data sets.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereAllLookupDataSets [<CommonParameters>]
```

## DESCRIPTION
Returns a list of the names of data sets.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereAllLookupDataSets
```

## PARAMETERS

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
{
"dataset-name" : "employees",
"number-of-columns" : 3,
"columns":
[{
"name":"Key",
"key":"true"
},{
"name":"User",
"key":"false"
},{
"name":"Groups","
key":"false"
}]}

## NOTES

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70922.htm)



