function Edit-SecureSphereWebAction {
    # .ExternalHelp ..\..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [string] $ActionSetName,
        
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [string] $ActionName,
        
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
         
        [Parameter(Mandatory = $true)]
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
        [ValidateRange(0, 65535)]
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

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/actionSets/$ActionSetName/$ActionName"

        $ApiBody = [ordered]@{}

        if ($PSBoundParameters.ContainsKey('SyslogLogLevel')) {
            $ApiBody += @{ "syslogLogLevel" = $SyslogLogLevel }
        }
        
        $ApiBody += @{ "syslogFacility" = $SyslogFacility }
            
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
            $Result = $null
            
            if ($ApiBody.Count -eq 0) {
                $Result = Invoke-RestMethod -Method Put -Uri $ApiUrl -ContentType "application/json" -WebSession $SecureSphereSession
            }
            else {
                $Result = Invoke-RestMethod -Method Put -Uri $ApiUrl -Body $ApiBody -ContentType "application/json" -WebSession $SecureSphereSession
            }
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
