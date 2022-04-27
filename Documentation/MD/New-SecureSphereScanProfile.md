# New-SecureSphereScanProfile

## SYNOPSIS
This method creates scan profile with the given properties.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereScanProfile [-ProfileName <String>] [-SiteName <String>] [-DataTypes <String[]>] [-AutoAcceptResults] [-DbsAndSchemasUsage <String>] [-DbsAndSchemas <DbsAndSchemas>] [<CommonParameters>]
```

## DESCRIPTION
This method creates scan profile with the given properties.

## EXAMPLES

### EXAMPLE 1

```powershell
$DbsAndSchemas = @(
    @{
        Database = "db1";
        Schema   = "any";
    },
    @{
        Database = "any";
        Schema   = "schema1";
    }
)

$DataTypes = @(
    "Password", 
    "Phone",
    "ZIP Code"
)

New-SecureSphereScanProfile -ProfileName "some profile" `
    -SiteName "some site name" -DataTypes $DataTypes `
    -AutoAcceptResults $true -DbsAndSchemasUsage "include" `
    -DbsAndSchemas $DbsAndSchemas
```

## PARAMETERS

### ProfileName
This parameter specifies profile name to create.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### SiteName
This parameter specifies site name.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### DataTypes
This parameter specifies data types.

```yaml
Type: String[]
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### AutoAcceptResults
This parameter specifies auto accept results.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### DbsAndSchemasUsage
This parameter specifies Dbs and schemas usage.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### DbsAndSchemas
This parameter specifies Dbs and Schemas.

```yaml
Type: DbsAndSchemas
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
IMP-10005 - An item with this name already exists - please select a different name
IMP-10015 - Cannot create "assessment scan" since parameter "X" is missing
IMP-14009 - Could not find Data Type: {0}
IMP-14010 - The given "PARAMETER" is invalid. The valid possible options are: {1}.
IMP-10006 - Scan scheduling not set properly
IMP-10003 - Choosing 'Any' for both Database and Schema names is not permitted.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70890.htm)



