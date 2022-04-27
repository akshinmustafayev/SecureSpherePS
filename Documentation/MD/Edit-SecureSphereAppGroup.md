# Edit-SecureSphereAppGroup

## SYNOPSIS
Update an application group with the name indicated by the path parameter applicationGroupName.

## SYNTAX

### Parameter Set 1
```
Edit-SecureSphereAppGroup -ApplicationGroupName <String> -NewName <String> [<CommonParameters>]
```

## DESCRIPTION
Update an application group with the name indicated by the path parameter applicationGroupName.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereAppGroup -ApplicationGroupName "HR-apps" -NewName "Finance-Lvl3apps"
```

## PARAMETERS

### ApplicationGroupName
This parameter specifies application group name to edit.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### NewName
This parameter specifies new name of the application group.

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
IMP-10031 - Application group not found
IMP-10071 - Name field must be populated

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61714.htm)



