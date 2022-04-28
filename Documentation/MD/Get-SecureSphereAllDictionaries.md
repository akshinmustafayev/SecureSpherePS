# Get-SecureSphereAllDictionaries

## SYNOPSIS
Returns all the dictionaries divided by dictionary group.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereAllDictionaries [<CommonParameters>]
```

## DESCRIPTION
Returns all the dictionaries divided by dictionary group.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereAllDictionaries
```

## PARAMETERS

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
{
"dictionaries":
{
"predefinedDictionaries":["a","b"]
},{
"predefinedThreatradarDictionaries":["c","d"]
},{
"myDictionaries":["y","z"]
}}

## NOTES

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66922.htm)



