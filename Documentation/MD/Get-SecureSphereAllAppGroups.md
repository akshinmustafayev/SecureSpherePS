# Get-SecureSphereAllAppGroups

## SYNOPSIS
Returns a list of applications and application groups for all root application groups in the system.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereAllAppGroups [<CommonParameters>]
```

### Parameter Set 2
```
Get-SecureSphereAllAppGroups [-FullDepth] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of applications and application groups for all root application groups in the system. The query parameter fullDepth indicates whether the method also returns the applications and application groups of child application groups recursively.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereAllAppGroups -FullDepth $true
```

## PARAMETERS

### FullDepth
This parameter indicates whether the method also returns the applications and application groups of child application groups recursively.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 2
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
"application-groups":[{"name":"Unassigned Applications","applications":[],"application-groups":[]},{"name":"Confidentiality_1_Integrity_23","applications":[{"site":"Default Site","server-group":"sg1","service":"Ora1","application":"Default Oracle Application"}],"application-groups":[{"name":"HR"}]}]
}

## NOTES

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61719.htm)



