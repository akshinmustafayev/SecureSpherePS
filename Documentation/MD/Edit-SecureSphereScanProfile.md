# Edit-SecureSphereScanProfile

## SYNOPSIS
This method updates an existing scan profile with the given properties.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereScanProfile [-ProfileName <String>] [-DataTypes <String[]>] [-DataSampleAccuracy <String>] [-DbsAndSchemasUsage <String>] [-DbsAndSchemas <DbsAndSchemas>] [-DelayBetweenQueries <UInt32>] [<CommonParameters>]
```

## DESCRIPTION
This method updates an existing scan profile with the given properties.

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


Edit-SecureSphereScanProfile -ProfileName "some profile" -DataTypes @("Password") `
    -DataSampleAccuracy 0.75 -DBAndSchemasUsage "include" `
    -DbsAndSchemas $DbsAndSchemas -DelayBetweenQueries 0
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

### DataSampleAccuracy
This parameter specifies data sample accuracy.

```yaml
Type: String
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

### DelayBetweenQueries
This parameter specifies delay between queries.

```yaml
Type: UInt32
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

IMP-14008 - Could not find profile name: {0}
IMP-14009 - Could not find Data Type: {0}.
IMP-14010 - The given {0} is invalid. The valid possible options are: {1}
IMP-14003 - Choosing 'Any' for both Database and Schema names is not permitted.
IMP-14012 - Updating {0} parameter is not permitted

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70890.htm)



