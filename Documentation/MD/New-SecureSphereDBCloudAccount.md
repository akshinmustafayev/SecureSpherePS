# New-SecureSphereDBCloudAccount

## SYNOPSIS
Creates a new cloud account.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereDBCloudAccount -CloudAccountName <String> -AccessKey <String> -PrivateKey <String> -AWSRegion <String> -CloudProvider <String> [<CommonParameters>]
```

## DESCRIPTION
Creates a new cloud account.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereDBCloudAccount -CloudAccountName "myCloudAccount" -AccessKey "AKIAJOVYOUDXLPMTVT3A" -PrivateKey "private" -AWSRegion "All" -CloudProvider "aws"
```

## PARAMETERS

### CloudAccountName
This parameter specifies the name of the cloud account to create.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### AccessKey
This parameter specifies access key.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### PrivateKey
This parameter specifies private key.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### AWSRegion
This parameter specifies AWS region.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### CloudProvider
This parameter specifies cloud provider.

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

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70916.htm)



