# Remove-SecureSphereAllEntriesFromIPGroup

## SYNOPSIS
Remove all the entries from an IP Group indicated by the path parameter ipGroupName.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereAllEntriesFromIPGroup -IPGroupName <String> [<CommonParameters>]
```

## DESCRIPTION
Remove all the entries from an IP Group indicated by the path parameter ipGroupName.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereAllEntriesFromIPGroup -IPGroupName "Some group"
```

## PARAMETERS

### IPGroupName
This parameter specifies the name of the IP Group.

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
IMP-10601 - IP group name not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61639.htm)



