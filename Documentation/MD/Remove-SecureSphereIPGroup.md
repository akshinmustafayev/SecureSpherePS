# Remove-SecureSphereIPGroup

## SYNOPSIS
Delete an IP Group.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereIPGroup -IPGroupName <String> [<CommonParameters>]
```

## DESCRIPTION
Delete an IP Group.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereIPGroup -IPGroupName "Some group"
```

## PARAMETERS

### IPGroupName
This parameter specifies the name of the IP Group to delete.

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
IMP-10601 - IP Group not found
IMP-10147 - This is a predefined ADC item that cannot be deleted
IMP-10178 - The IP Group {name} cannot be deleted since it is connected to Server Group {siteName}-{ServerGroupName}.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69928.htm)



