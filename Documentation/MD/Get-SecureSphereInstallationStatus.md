# Get-SecureSphereInstallationStatus

## SYNOPSIS
Returns installation process status.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereInstallationStatus [-IncludeLog] [<CommonParameters>]
```

### Parameter Set 2
```
Get-SecureSphereInstallationStatus [<CommonParameters>]
```

## DESCRIPTION
Returns installation process status.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-SecureSphereInstallationStatus -IncludeLog $true
```

## PARAMETERS

### IncludeLog
This parameter specifies if to include installation log for each component.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: False
Pipeline Input: False
```

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
{
"state": "FINISHED",
"statuses": {
"MX": [{
...
}

## NOTES

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66844.htm)



