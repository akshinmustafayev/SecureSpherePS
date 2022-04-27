# New-SecureSphereWebErrorPage

## SYNOPSIS
Create a Web Error Page Group.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereWebErrorPage -WebErrorPageName <String> [-ErrorPageContent <String>] [-HttpResponseCode <String>] [-RedirectUrl <String>] [<CommonParameters>]
```

## DESCRIPTION
Create a Web Error Page Group.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereWebErrorPage -WebErrorPageName "some page" -ErrorPageContent "An error occurred. Don’t do that again!" -HttpResponseCode "400 Bad Request"
```

## PARAMETERS

### WebErrorPageName
This parameter specifies the page name.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ErrorPageContent
This parameter specifies the content of the page to be shown when an error occurs.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### HttpResponseCode
This parameter specifies the code of the response that is sent when an error occurs.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: false
Pipeline Input: False
```

### RedirectUrl
This parameter specifies the URL to redirect to when an error occurs.

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
IMP-10005 - An item with this name already exists - please select a different name
IMP-10353 - Exactly one of the fields "redirectUrl, errorPageContent" should be populated

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70339.htm)



