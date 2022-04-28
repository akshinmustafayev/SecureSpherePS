# Remove-SecureSphereClassificationScan

## SYNOPSIS
This method deletes a given classification scan.

## SYNTAX

### Parameter Set 1 (Default)
```
Remove-SecureSphereClassificationScan [-ScanName <String>] [<CommonParameters>]
```

## DESCRIPTION
This method deletes a given classification scan.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-SecureSphereClassificationScan -ScanName "some scan"
```

## PARAMETERS

### ScanName
This parameter specifies scan name.

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
IMP-14007 - Could not find "assessment" scan name: {1}.
IMP-14011 - The scan name you entered already exists in more than one scan. Change the name of your scan so that it is unique.

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70890.htm)



