# Edit-SecureSphereDBCloudAccount

## SYNOPSIS
Updates the could account details.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereDBCloudAccount -CloudAccountName <String> -AccessKey <String> -PrivateKey <String> -AWSRegion <String> -CloudProvider <String> [<CommonParameters>]
```

## DESCRIPTION
Updates the could account details.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereDBCloudAccount -CloudAccountName "myCloudAccount" -AccessKey "AKIAJOVYOUDXLPMTVT3A" -PrivateKey "private" -AWSRegion "All" -CloudProvider "aws"
```

## PARAMETERS

### CloudAccountName
This parameter specifies the name of the cloud account to update.

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

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70914.htm)



