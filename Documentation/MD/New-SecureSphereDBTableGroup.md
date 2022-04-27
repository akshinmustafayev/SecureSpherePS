# New-SecureSphereDBTableGroup

## SYNOPSIS
Creates a new table group using the provided properties.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereDBTableGroup -DisplayName <String> [-IsSensitive] -ServiceTypes <String[]> [-DataType <String>] [<CommonParameters>]
```

### Parameter Set 2
```
New-SecureSphereDBTableGroup -DisplayName <String> -ServiceTypes <String[]> [<CommonParameters>]
```

### Parameter Set 3
```
New-SecureSphereDBTableGroup [-DisplayName <String>] [-IsSensitive] [-ServiceTypes <String[]>] [<CommonParameters>]
```

## DESCRIPTION
Creates a new table group using the provided properties.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereDBTableGroup -DisplayName "My Group" -IsSensitive $false -ServiceTypes @("Oracle", "SapHana") -DataType "Amount"
```

### EXAMPLE 2

```powershell
New-SecureSphereDBTableGroup -DisplayName "My Group" -IsSensitive $false -ServiceTypes @("Oracle", "SapHana")
```

## PARAMETERS

### DisplayName
This parameter specifies the table group name.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### IsSensitive
This parameter specifies the data within the table group considered to be sensitive.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1, Parameter Set 3
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ServiceTypes
This parameter specifies service list the tables within the group are assigned to.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### DataType
This parameter specifies data type of the stored data.

```yaml
Type: String
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
IMP-10005 - The item with this name already exists - please select a different name
IMP-10001 - One of the provided serviceTypes doesn't exist
IMP-10001 - The provided dataType doesn't exist

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/65840.htm)



