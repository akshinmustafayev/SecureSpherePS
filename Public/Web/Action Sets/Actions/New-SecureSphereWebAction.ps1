function New-SecureSphereWebAction {
    # .ExternalHelp ..\..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [string] $ActionSetName,
        
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [string] $ActionName,

        [Parameter(Mandatory = $true)] 
        [ValidateSet(
            "Syslog", 
            "GWSyslog", 
            "Email"
        )]
        [ValidateNotNullOrEmpty()] 
        [string] $Type,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()] 
        [string] $ActionInterface,
         
        [Parameter(Mandatory = $false)]
        [string] $Message,
         
        [Parameter(Mandatory = $false)]
        [ValidateSet(
            "INFO", 
            "WARN",
            "DEBUG", 
            "ERROR"
        )]
        [ValidateNotNullOrEmpty()]
        [string] $SyslogLogLevel,
         
        [Parameter(Mandatory = $false)] 
        [ValidateSet(
            "KERN",
            "USER",
            "MAIL", 
            "DAEMON",
            "AUTH", 
            "SYSLOG",
            "LPR", 
            "NEWS", 
            "UUCP", 
            "CRON",
            "AUTHPRIV",
            "FTP", 
            "LOCAL0",
            "LOCAL1",
            "LOCAL2", 
            "LOCAL3", 
            "LOCAL4", 
            "LOCAL5", 
            "LOCAL6", 
            "LOCAL7"
        )]
        [ValidateNotNullOrEmpty()]
        [string] $SyslogFacility, 
        
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [string] $HostName,
        
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [UInt32] $Port,
        
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [string] $SecondaryHost,
        
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [UInt32] $SecondaryPort,
        
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [string] $Protocol,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [bool] $RunOnEveryEvent,
         
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $FromAddress,
         
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $ToAddress,
         
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $CcAddress,
         
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $EmailSubject,
         
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [string] $EmailBody,
        
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [string] $EmailFormat
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        if (($Type -eq "Email") -and $PSBoundParameters.ContainsKey('Message')) {
            Write-Error "Message parameter is relevant for Syslog or GWSyslog types."
            break
        }
        if (($Type -eq "Email") -and $PSBoundParameters.ContainsKey('SyslogLogLevel')) {
            Write-Error "SyslogLogLevel parameter is relevant for Syslog or GWSyslog types."
            break
        }
        if (($Type -eq "Email") -and $PSBoundParameters.ContainsKey('SyslogFacility')) {
            Write-Error "SyslogFacility parameter is relevant for Syslog or GWSyslog types."
            break
        }
        if ((($Type -eq "Email") -or ($Type -eq "Syslog")) -and $PSBoundParameters.ContainsKey('HostName')) {
            Write-Error "SyslogFacility parameter is relevant for GWSyslog type."
            break
        }
        if ((($Type -eq "Email") -or ($Type -eq "Syslog")) -and $PSBoundParameters.ContainsKey('Port')) {
            Write-Error "Port parameter is relevant for GWSyslog type."
            break
        }
        if ((($Type -eq "Email") -or ($Type -eq "Syslog")) -and $PSBoundParameters.ContainsKey('SecondaryHost')) {
            Write-Error "SecondaryHost parameter is relevant for GWSyslog type."
            break
        }
        if ((($Type -eq "Email") -or ($Type -eq "Syslog")) -and $PSBoundParameters.ContainsKey('Protocol')) {
            Write-Error "Protocol parameter is relevant for GWSyslog type."
            break
        }
        if (($Type -eq "GWSyslog") -and $PSBoundParameters.ContainsKey('RunOnEveryEvent')) {
            Write-Error "RunOnEveryEvent parameter is relevant for Syslog or Email types."
            break
        }
        if ((($Type -eq "Syslog") -or ($Type -eq "GWSyslog")) -and $PSBoundParameters.ContainsKey('FromAddress')) {
            Write-Error "FromAddress parameter is relevant for Email type."
            break
        }
        if ((($Type -eq "Syslog") -or ($Type -eq "GWSyslog")) -and $PSBoundParameters.ContainsKey('ToAddress')) {
            Write-Error "ToAddress parameter is relevant for Email type."
            break
        }
        if ((($Type -eq "Syslog") -or ($Type -eq "GWSyslog")) -and $PSBoundParameters.ContainsKey('CcAddress')) {
            Write-Error "CcAddress parameter is relevant for Email type."
            break
        }
        if ((($Type -eq "Syslog") -or ($Type -eq "GWSyslog")) -and $PSBoundParameters.ContainsKey('EmailSubject')) {
            Write-Error "EmailSubject parameter is relevant for Email type."
            break
        }
        if ((($Type -eq "Syslog") -or ($Type -eq "GWSyslog")) -and $PSBoundParameters.ContainsKey('EmailBody')) {
            Write-Error "EmailBody parameter is relevant for Email type."
            break
        }
        if ((($Type -eq "Syslog") -or ($Type -eq "GWSyslog")) -and $PSBoundParameters.ContainsKey('EmailFormat')) {
            Write-Error "EmailFormat parameter is relevant for Email type."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/actionSets/$ActionSetName/$ActionName"

        $ApiBody = [ordered]@{
            "type" = $Type;
        }

        if ($PSBoundParameters.ContainsKey('ActionInterface')) {
            $ApiBody += @{ "actionInterface" = $ActionInterface }
        }
        if ($PSBoundParameters.ContainsKey('SyslogLogLevel')) {
            $ApiBody += @{ "syslogLogLevel" = $SyslogLogLevel }
        }
        if ($PSBoundParameters.ContainsKey('SyslogFacility')) {
            $ApiBody += @{ "syslogFacility" = $SyslogFacility }
        }
        if ($PSBoundParameters.ContainsKey('Message')) {
            $ApiBody += @{ "message" = $Message }
        }
        if ($PSBoundParameters.ContainsKey('Protocol')) {
            $ApiBody += @{ "protocol" = $Protocol }
        }
        if ($PSBoundParameters.ContainsKey('HostName')) {
            $ApiBody += @{ "host" = $HostName }
        }
        if ($PSBoundParameters.ContainsKey('Port')) {
            $ApiBody += @{ "port" = $Port }
        }
        if ($PSBoundParameters.ContainsKey('SecondaryHost')) {
            $ApiBody += @{ "secondaryHost" = $SecondaryHost }
        }
        if ($PSBoundParameters.ContainsKey('SecondaryPort')) {
            $ApiBody += @{ "secondaryPort" = $SecondaryPort }
        }
        if ($PSBoundParameters.ContainsKey('RunOnEveryEvent')) {
            $ApiBody += @{ "runOnEveryEvent" = $RunOnEveryEvent }
        }
        if ($PSBoundParameters.ContainsKey('FromAddress')) {
            $ApiBody += @{ "fromAddress" = $FromAddress }
        }
        if ($PSBoundParameters.ContainsKey('ToAddress')) {
            $ApiBody += @{ "toAddress" = $ToAddress }
        }
        if ($PSBoundParameters.ContainsKey('CcAddress')) {
            $ApiBody += @{ "ccAddress" = $CcAddress }
        }
        if ($PSBoundParameters.ContainsKey('EmailSubject')) {
            $ApiBody += @{ "emailSubject" = $EmailSubject }
        }
        if ($PSBoundParameters.ContainsKey('EmailBody')) {
            $ApiBody += @{ "emailBody" = $EmailBody }
        }
        if ($PSBoundParameters.ContainsKey('EmailFormat')) {
            $ApiBody += @{ "emailFormat" = $EmailFormat }
        }

        $ApiBody = $ApiBody | ConvertTo-Json
    }
    Process {
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] ParameterSetName: $($PsCmdlet.ParameterSetName)"
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] PSBoundParameters: $($PSBoundParameters | Out-String)"

        try {
            $Result = Invoke-RestMethod -Method Post -Uri $ApiUrl -Body $ApiBody -ContentType "application/json" -WebSession $SecureSphereSession
        }
        catch {
            Write-Error "$_"
        }
        
        return $Result
    }
    End {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Complete"
    }
}
