# New-SecureSphereSnippetInjectionPolicy

## SYNOPSIS
Creates an snippet injection policy, indicated by the path parameter: policyName

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereSnippetInjectionPolicy -PolicyName <String> -Enabled -InvocationFrequency [<String>] [-InvocationFrequencyInSec <UInt32>] [-AllowInvocationInAllPages] [-AdditionalInvocationUrls <String[]>] -SnippetLocation <String> [-SnippetCustomLocation <String>] [-SnippetContent <String>] [-ApplyTo <Array>] [-MatchCriteria <Array>] [<CommonParameters>]
```

## DESCRIPTION
Creates an snippet injection policy, indicated by the path parameter: policyName

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereSnippetInjectionPolicy -PolicyName "some policy" -Enabled $true -InvocationFrequency "OncePerSession" -InvocationFrequencyInSec 600 -AllowInvocationInAllPages $false -SnippetLocation "AfterBody" -SnippetContent "<script>Hello</script>" -ApplyTo $ApplyTo -MatchCriteria $MatchCriteria

Due to lack of documentation it is unknown, what type of objects to write to ApplyTo and MatchCriteria. It briefly says "See: Custom Policy Predicates" and "See: Policy Apply to", but it is not clear where to look for. See https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70374.htm if you want.

My advice is to use:
$ListOfPolicies = Get-SecureSphereAllSnippetInjectionPolicies
Get-SecureSphereSnippetInjectionPolicy -PolicyName $ListOfPolicies."policies"[0]

You will get all the configuration and figure out what you can write to ApplyTo and MatchCriteria attributes.
```

## PARAMETERS

### PolicyName
This parameter specifies the name of the policy.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Enabled
This parameter indicates whether the policy is enabled or disabled.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### InvocationFrequency
This parameter specifies invocation Frequency.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Accepted Values: OncePerSession
                 Always
                 EveryXSec
Pipeline Input: False
```

### InvocationFrequencyInSec
This parameter specifies custom invocation frequency in seconds.

```yaml
Type: UInt32
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: 600
Pipeline Input: False
```

### AllowInvocationInAllPages
This parameter specifies if to allow invocation on all pages.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: false
Pipeline Input: False
```

### AdditionalInvocationUrls
This parameter specifies additional invocation URLs.

```yaml
Type: String[]
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### SnippetLocation
This parameter specifies the location of the snippet.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Accepted Values: AfterHead
                 AfterBody
                 AfterCustom
Pipeline Input: False
```

### SnippetCustomLocation
This parameter specifies the String to put the snippet after when snippetLocation = AfterCustom.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Accepted Values: 
Pipeline Input: False
```

### SnippetContent
This parameter specifies the snippet content.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ApplyTo
This parameter specifies Sites/Server groups/Services/Applications to apply this policy to.

```yaml
Type: Array
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### MatchCriteria
This parameter specifies exceptions for rules in this policy.

```yaml
Type: Array
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

IMP-10006 - Site not found
IMP-10008 - Server Group not found
IMP-10014 - Application not found
IMP-10016 - The "{PARAMETER_NAME}" entered is illegal
IMP-10017 - Service not found
IMP-10033 - Policy not found
IMP-10056 - Body parameter "{REQUIRED_PARAMETER_NAME}" is missing
IMP-10119 - Predicate type is not supported: {PREDICATE_TYPE}
IMP-10141 - Value must be greater than or equal to 10
IMP-10831 - Multiple predicates of the type {PREDICATE_TYPE} are not supported
IMP-10905 - One of the predicates has an empty list and cannot be saved.
IMP-15050 - snippetCustomLocation cannot be left blank

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/70374.htm)



