# Set-SecureSphereDBTag

## SYNOPSIS
Tags a database with a given database tag.

## SYNTAX

### Parameter Set 1 (Default)
```
Set-SecureSphereDBTag -TagName <String> -Objects <Array of objects> [-Targets <Array of objects>] [<CommonParameters>]
```

### Parameter Set 2
```
Set-SecureSphereDBTag -TagName <String> -Objects <Array of objects> [<CommonParameters>]
```

## DESCRIPTION
Tags a database with a given database tag.

## EXAMPLES

### EXAMPLE 1

```powershell
$Objects = @(
    @{ "name" = "conf/dbServices/site1/sg1/service1/dbConnections/newConnName" },
    @{ "name" = "conf/dbServices/site2/sg2/service2/dbConnections/newConnName2" }
)
Set-SecureSphereDBTag -TagName "SomeTag1" -Objects $Objects
```

## PARAMETERS

### TagName
This parameter specifies tag name.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Objects
This parameter specifies objects array.

```yaml
Type: Array of objects
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Targets
This parameter specifies targets array.

```yaml
Type: Array of objects
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

## NOTES

### Error Codes
IMP-10006 - Site not found
IMP-10150 - Requested Database Connection name not found
IMP-10082 - Tag not found

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61719.htm)



