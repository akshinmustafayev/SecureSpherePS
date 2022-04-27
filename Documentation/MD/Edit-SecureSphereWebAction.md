# Edit-SecureSphereWebAction

## SYNOPSIS
Updates an action from within an action set. The entire action will be replaced.

## SYNTAX

### Parameter Set 1 (Default)
```
Edit-SecureSphereWebAction -ActionSetName <String> -ActionName <String> [-Message <String>] [-SyslogLogLevel <String>] -SyslogFacility <String> [-HostName <String>] [-Port <UInt32>] [-SecondaryHost <String>] [-SecondaryPort <UInt32>] [-Protocol <String>] [-RunOnEveryEvent] [-FromAddress <String>] [-ToAddress <String>] [-CcAddress <String>] [-EmailSubject <String>] [-EmailBody <String>] [-EmailFormat <String>] [<CommonParameters>]
```

### Parameter Set 2
```
Edit-SecureSphereWebAction -ActionSetName <String> -ActionName <String> [-SyslogLogLevel <String>] -SyslogFacility <String> [-HostName <String>] [-Message <String>] [-RunOnEveryEvent] [<CommonParameters>]
```

## DESCRIPTION
Updates an action from within an action set. The entire action will be replaced.

## EXAMPLES

### EXAMPLE 1

```powershell
Edit-SecureSphereWebAction -ActionSetName "some_set" -ActionName "some_action" -HostName "12.12.12.12" -SyslogLogLevel "INFO" -SyslogFacility "USER" -RunOnEveryEvent $false -Message "CEF:0|Imperva Inc.|SecureSphere|${SecureSphereVersion}|${Alert.alertType}"
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

### Message
This parameter specifies the syslog message. Mandatory, unless already filled by the selected action interface. Relevant for Syslog or GWSyslog types.

```yaml
Type: String
Parameter Sets: (All)
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
This parameter specifies the syslog facility. KERN is legal value only to Syslog type.

```yaml
Type: String
Parameter Sets: (All)
Aliases: none

Required: true
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
Parameter Sets: Parameter Set 1
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
Parameter Sets: Parameter Set 1
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
Parameter Sets: Parameter Set 1
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
Parameter Sets: Parameter Set 1
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
Parameter Sets: (All)
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
This parameter specifies the CC address. Relevant for Email type.

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

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/Documentation/MD)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/66914.htm)



