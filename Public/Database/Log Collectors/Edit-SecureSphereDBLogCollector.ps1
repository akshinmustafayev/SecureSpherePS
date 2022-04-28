function Edit-SecureSphereDBLogCollector {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()] 
        [string] $SiteName,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $ServerGroupName,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $ServiceName,

        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()]
        [string] $LogCollectorName,
         
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $DisplayName,
         
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [bool] $Enabled,
         
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $GatewayName,
         
        [Parameter(Mandatory = $false)]
        [ValidateSet("SQL", "FTP")]
        [ValidateNotNullOrEmpty()]
        [string] $Protocol,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $UserName,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $Password,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $DBHostName,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $Location,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [bool] $DeleteProcessLogs,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $AdditionalConfiguration,
        
        [Parameter(Mandatory = $false)]
        [ValidateSet("Teradata", "DB2_Over_Z_OS", "DB2_Over_AS_400", "NetApp", "Oracle_RDS", "PostgreSQL_RDS")]
        [ValidateNotNullOrEmpty()]
        [string] $Type,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $AccessKey,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $SecretKey,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $Region,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [UInt32] $ConnectionInterval
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        if (($PSBoundParameters.ContainsKey('DisplayName') -eq $false) -and
            ($PSBoundParameters.ContainsKey('Enabled') -eq $false) -and
            ($PSBoundParameters.ContainsKey('GatewayName') -eq $false) -and
            ($PSBoundParameters.ContainsKey('Protocol') -eq $false) -and
            ($PSBoundParameters.ContainsKey('UserName') -eq $false) -and
            ($PSBoundParameters.ContainsKey('Password') -eq $false) -and
            ($PSBoundParameters.ContainsKey('DBHostName') -eq $false) -and
            ($PSBoundParameters.ContainsKey('Protocol') -eq $false) -and
            ($PSBoundParameters.ContainsKey('Location') -eq $false) -and
            ($PSBoundParameters.ContainsKey('DeleteProcessLogs') -eq $false) -and
            ($PSBoundParameters.ContainsKey('AdditionalConfiguration') -eq $false) -and
            ($PSBoundParameters.ContainsKey('TypeValue') -eq $false) -and
            ($PSBoundParameters.ContainsKey('AccessKey') -eq $false) -and
            ($PSBoundParameters.ContainsKey('SecretKey') -eq $false) -and
            ($PSBoundParameters.ContainsKey('Region') -eq $false) -and
            ($PSBoundParameters.ContainsKey('ConnectionInterval') -eq $false)) {
            Write-Error "At least one parameter to edit must be specified"
            break
        }

        $TypeValue = ""
        if ($Type -eq "Teradata") { $TypeValue = "1234567" }
        elseif ($Type -eq "DB2_Over_Z_OS") { $TypeValue = "500778815" }
        elseif ($Type -eq "DB2_Over_AS_400") { $TypeValue = "1038838319" }
        elseif ($Type -eq "NetApp") { $TypeValue = "NetApp" }
        elseif ($Type -eq "Oracle_RDS") { $TypeValue = "Oracle_RDS" }
        elseif ($Type -eq "PostgreSQL_RDS") { $TypeValue = "PostgreSql_RDS" }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/dbServices/$SiteName/$ServerGroupName/$ServiceName/logCollectors/$LogCollectorName"
        
        $ApiBody = [ordered]@{}
        if ($PSBoundParameters.ContainsKey('DisplayName')) {
            $ApiBody += @{ "display-name" = $DisplayName }
        }
        if ($PSBoundParameters.ContainsKey('Enabled')) {
            $ApiBody += @{ "enabled" = $Enabled }
        }
        if ($PSBoundParameters.ContainsKey('GatewayName')) {
            $ApiBody += @{ "gateway-name" = $GatewayName }
        }
        if ($PSBoundParameters.ContainsKey('Protocol')) {
            $ApiBody += @{ "protocol" = $Protocol }
        }
        if ($PSBoundParameters.ContainsKey('UserName')) {
            $ApiBody += @{ "user-name" = $UserName }
        }
        if ($PSBoundParameters.ContainsKey('Password')) {
            $ApiBody += @{ "password" = $Password }
        }
        if ($PSBoundParameters.ContainsKey('DBHostName')) {
            $ApiBody += @{ "host" = $DBHostName }
        }
        if ($PSBoundParameters.ContainsKey('Location')) {
            $ApiBody += @{ "location" = $Location }
        }
        if ($PSBoundParameters.ContainsKey('DeleteProcessLogs')) {
            $ApiBody += @{ "delete-process-logs" = $DeleteProcessLogs }
        }
        if ($PSBoundParameters.ContainsKey('AdditionalConfiguration')) {
            $ApiBody += @{ "additional-configuration" = $AdditionalConfiguration }
        }
        if ($PSBoundParameters.ContainsKey('TypeValue')) {
            $ApiBody += @{ "type" = $TypeValue }
        }
        if ($PSBoundParameters.ContainsKey('AccessKey')) {
            $ApiBody += @{ "access-key" = $AccessKey }
        }
        if ($PSBoundParameters.ContainsKey('SecretKey')) {
            $ApiBody += @{ "secret-key" = $SecretKey }
        }
        if ($PSBoundParameters.ContainsKey('Region')) {
            $ApiBody += @{ "region" = $Region }
        }
        if ($PSBoundParameters.ContainsKey('ConnectionInterval')) {
            $ApiBody += @{ "connection-interval" = $ConnectionInterval }
        }

        $ApiBody = $ApiBody | ConvertTo-Json
    }
    Process {
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] ParameterSetName: $($PsCmdlet.ParameterSetName)"
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] PSBoundParameters: $($PSBoundParameters | Out-String)"

        try {
            $Result = Invoke-RestMethod -Method Put -Uri $ApiUrl -Body $ApiBody -ContentType "application/json" -WebSession $SecureSphereSession
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
