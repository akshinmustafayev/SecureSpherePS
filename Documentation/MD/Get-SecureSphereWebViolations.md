# Get-SecureSphereWebViolations

## SYNOPSIS
Retrieves a list of violations by the provided filters. At least one filter must be provided.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereWebViolations -SiteName <String> -ServerGroupName <String> -WebServiceName <String> -FiltersList <Array> [<CommonParameters>]
```

## DESCRIPTION
Retrieves a list of violations by the provided filters. At least one filter must be provided.

## EXAMPLES

### EXAMPLE 1

```powershell
$FiltersList = @{}

Get-SecureSphereWebViolations -SiteName "Denver" -ServerGroupName "HR-Prod" -WebServiceName "ODS-WebService" -FiltersList $FiltersList

Can not give a specific example due to lack of official documentation. See https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69955.htm.
```

## PARAMETERS

### SiteName
This parameter specifies the name of the parent site of the web service to access.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ServerGroupName
This parameter specifies the name of the parent server group of the web server to access.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### WebServiceName
This parameter specifies the name of the web service to access.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### FiltersList
This parameter specifies an array of filters. At least one filter must be provided.

```yaml
Type: Array
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
"violations": [
...
]
}

## NOTES

### Error Codes
IMP-10032 - The "{parameterName}" value entered is illegal
IMP-10152 - Invalid IP address in {parameterName} field
IMP-10185 - Unrecognized parameter: {parameterName}
IMP-11500 - Max value for parameter {parameterName} is {maxValue}
IMP-11502 - Must specify both values: {firstParameterName} and {secondParameterName}
IMP-11503 - {parameterName} value must be greater than or equal to {minValue}
IMP-11504 - {parameterName} value must be between {minValue} and {maxValue}
IMP-13500 - Missing filter attributes: Site parameter can only appear with additional parameters (Server-Group, Service or Application)
IMP-13501 - Please specify the full path: {fullPath}
IMP-13502 - Too many results, please refine your filters or specify a limit
IMP-13503 - Invalid date format, the correct format is {dateFormat}.
IMP-13504 - Must specify a filter
IMP-13505 - The same parameter has been used multiple times: {parameterName}

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/69955.htm)



