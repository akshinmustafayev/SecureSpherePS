# New-SecureSphereAppGroup

## SYNOPSIS
Creates an application group with the name indicated by the path parameter childApplicationGroupName under the application group with the name indicated by the path parameter parentApplicationGroupName.

## SYNTAX

### Parameter Set 1
```
New-SecureSphereAppGroup -ParentApplicationGroupName <String> -ChildApplicationGroupName <String> [<CommonParameters>]
```

## DESCRIPTION
Creates an application group with the name indicated by the path parameter childApplicationGroupName under the application group with the name indicated by the path parameter parentApplicationGroupName.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereAppGroup -ParentApplicationGroupName "HR-apps" -ChildApplicationGroupName "Finance-Lvl3apps"
```

## PARAMETERS

### ParentApplicationGroupName
This parameter specifies new parent application group name.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ChildApplicationGroupName
This parameter specifies new child application group name.

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

## NOTES

### Error Codes
IMP-10005 - An item with this name already exists - please select a different name
IMP-10031 - Application group not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61712.htm)



