# Get-SecureSphereDBCloudAccountEntry

## SYNOPSIS
Returns a cloud account entry by the cloud account item display name.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereDBCloudAccountEntry -CloudAccountName <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a cloud account entry by the cloud account item display name.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereDBCloudAccountEntry -CloudAccountName "myCloudAccount"
```

## PARAMETERS

### CloudAccountName
This parameter specifies the name of the cloud account.

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

### Response Body
{
"accessKey": "AKIAJOVYOUDXLPMTVT3A",
"awsRegion": "All",
"cloudProvider": "aws"
}

## NOTES

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70915.htm)



