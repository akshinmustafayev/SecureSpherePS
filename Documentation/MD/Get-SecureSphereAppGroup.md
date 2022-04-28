# Get-SecureSphereAppGroup

## SYNOPSIS
Returns a list of applications and application groups under an application group with the name indicated by the path parameter applicationGroupName.

## SYNTAX

### Parameter Set 1
```
Get-SecureSphereAppGroup -ApplicationGroupName <String> [-FullDepth] [<CommonParameters>]
```

### Parameter Set 2
```
Get-SecureSphereAppGroup -ApplicationGroupName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a list of applications and application groups under an application group with the name indicated by the path parameter applicationGroupName. The query parameter fullDepth indicates whether the method also returns the applications and application groups of child application groups recursively.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereAppGroup -ParentApplicationGroupName "HR-apps" -FullDepth $true
```

### EXAMPLE 2

```powershell
Get-SecureSphereAppGroup -ParentApplicationGroupName "HR-apps" -FullDepth $false
```

## PARAMETERS

### ApplicationGroupName
This parameter specifies application group name.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### FullDepth
This parameter indicates whether the method also returns the applications and application groups of child application groups recursively.

```yaml
Type: Boolean
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
"application-groups":[ {"name":"Confidentiality_1_Integrity_23","applications":[{"site":"Default Site","server-group":"sg1","service":"Ora1","application":"Default Oracle Application"}],"application-groups":[{"name":"HR"}]},{"name":"Unassigned Applications","applications":[]}]
}

## NOTES

### Error Codes
Remark 1

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61717.htm)



