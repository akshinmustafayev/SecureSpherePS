# Remove-SecureSphereAppGroup

## SYNOPSIS
Deletes an application group with the name indicated by the path parameter applicationGroupName.

## SYNTAX

### Parameter Set 1
```
Remove-SecureSphereAppGroup -ApplicationGroupName <String> [<CommonParameters>]
```

## DESCRIPTION
Deletes an application group with the name indicated by the path parameter applicationGroupName. Note, that when an application group is deleted, all of its sub application groups are deleted as well, and all of the applications under its sub tree are removed from their application groups.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereAppGroup -ApplicationGroupName "HR-apps"
```

## PARAMETERS

### ApplicationGroupName
This parameter specifies application group name to delete.

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

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61715.htm)



