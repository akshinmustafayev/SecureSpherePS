# New-SecureSphereWebAction

## SYNOPSIS
Creates a new action within an action set.

## SYNTAX

### Parameter Set 1 (Default)
```
New-SecureSphereWebAction -ActionSetName <String> -ActionName <String> -Type <String> [-ActionInterface <String>] [-Message <String>] [-SyslogLogLevel <String>] [-SyslogFacility <String>] [-HostName <String>] [-Port <UInt32>] [-SecondaryHost <String>] [-SecondaryPort <UInt32>] [-Protocol <String>] [-RunOnEveryEvent] [-FromAddress <String>] [-ToAddress <String>] [-CcAddress <String>] [-EmailSubject <String>] [-EmailBody <String>] [-EmailFormat <String>] [<CommonParameters>]
```

### Parameter Set 2
```
New-SecureSphereWebAction -ActionSetName <String> -ActionName <String> -Type <String> [-Port <UInt32>] [-HostName <String>] [-Protocol <String>] [-SecondaryHost <String>] [-SecondaryPort <UInt32>] [-SyslogLogLevel <String>] [-SyslogFacility <String>] [-ActionInterface <String>] [<CommonParameters>]
```

## DESCRIPTION
Creates a new action within an action set.

## EXAMPLES

### EXAMPLE 1

```powershell
New-SecureSphereWebAction -ActionSetName "some_set" -ActionName "some_action" -Type "GWSyslog" -Protocol "UDP" -HostName "12.12.12.12" -Port 12 -SecondaryHost "12.12.12.13" -SecondaryPort 13 -SyslogLogLevel "INFO" -SyslogFacility "USER" -ActionInterface "Gateway Log network security event to System Log (syslog) using the CEF standard"
```

## PARAMETERS

### ActionSetName
This parameter specifies the name of the action set.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### ActionName
This parameter specifies the name of the action.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### Type
This parameter specifies the type of the action.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
Position: named
Default Value: None
Accepted Values: Syslog
                 GWSyslog
                 Email
Pipeline Input: False
```

### ActionInterface
This parameter specifies the action interface.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Message
This parameter specifies the syslog message. Relevant for Syslog or GWSyslog types.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### SyslogLogLevel
This parameter specifies the syslog level. Relevant for Syslog or GWSyslog types.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Accepted Values: INFO
                 WARN
                 DEBUG
                 ERROR
Pipeline Input: False
```

### SyslogFacility
This parameter specifies the syslog facility. Relevant for Syslog or GWSyslog types.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Accepted Values: KERN
                 USER
                 MAIL
                 DAEMON
                 AUTH
                 SYSLOG
                 LPR
                 NEWS
                 UUCP
                 CRON
                 AUTHPRIV
                 FTP
                 LOCAL0
                 LOCAL1
                 LOCAL2
                 LOCAL3
                 LOCAL4
                 LOCAL5
                 LOCAL6
                 LOCAL7
Pipeline Input: False
```

### HostName
This parameter specifies the host. Relevant for Syslog or GWSyslog types.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### Port
This parameter specifies the Port. Relevant for GWSyslog type.

```yaml
Type: UInt32
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Accepted Values: 0-65535
Pipeline Input: False
```

### SecondaryHost
This parameter specifies the secondary host. Relevant for GWSyslog type.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### SecondaryPort
This parameter specifies the secondary port. Relevant for GWSyslog type.

```yaml
Type: UInt32
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Accepted Values: 0-65535
Pipeline Input: False
```

### Protocol
This parameter specifies the protocol. Relevant for GWSyslog type.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### RunOnEveryEvent
This parameter specifies if to run on every event. Syslog defaults to true and Email defaults to false. Relevant for Syslog and Email types.

```yaml
Type: Boolean
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### FromAddress
This parameter specifies the source email address. Relevant for Email type. A single valid email address.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### ToAddress
This parameter specifies the destination email address. Relevant for Email type. A list of comma separated email addresses.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### CcAddress
This parameter specifies the CC address. Relevant for Email type. A list of comma separated email addresses.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### EmailSubject
This parameter specifies the email subject. Empty string reverts to default. Empty string reverts to default. Relevant for Email type.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### EmailBody
This parameter specifies the email body. Empty string reverts to default. Relevant for Email type.

```yaml
Type: String
Parameter Sets: Parameter Set 1
Aliases: none

Required: false
Position: named
Default Value: None
Pipeline Input: False
```

### EmailFormat
This parameter specifies the email format. Relevant for Email type.

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
IMP-10016 - The {} entered is illegal
IMP-10701 - Action set {} not found
IMP-13200 - Parameter {} cannot be changed since it is set in the selected action interface
IMP-13201 - Action type {} is not supported
IMP-13202 - Action interface {} of type {} not found
IMP-13204 - Action {} exists multiple times in action set {}
IMP-13205 - Action of type {} is not supported in action set of type {}
IMP-13206 - Value for parameter {} may not be empty
IMP-13207 - The value {} is an invalid placeholder.
IMP-13208 - The value {} is an invalid placeholder. Similar placeholder: {}
IMP-13209 - The value {} is an invalid placeholder. Use {} instead
IMP-13210 - The template contains invalid placeholders.
IMP-13212 - Action {} already exists in action set {}
IMP-13214 - Value for parameter Name may not contain any of these characters: [ ] ' " < \> & , …
IMP-13215 - Invalid value in Field 'From Address'. Value should a single email address.
IMP-13216 - Invalid value in Field 'To Address'. Value should be one or more comma-separated email addresses.
IMP-13217 - Invalid value in Field 'CC Address'. Value should be one or more comma-separated email addresses.
IMP-13218 - Invalid value for action interface parameter - expected value is one of the following Html,Text

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66914.htm)



