function New-SecureSphereDBLogCollector {
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
        [string] $DisplayName,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [bool] $Enabled,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $GatewayName,
        
        [Parameter(Mandatory = $true)]
        [ValidateSet(
            "SQL",
            "FTP"
        )]
        [ValidateNotNullOrEmpty()]
        [string] $Protocol,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $UserName,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $Password,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $DBHostName,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $Location,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [bool] $DeleteProcessLogs,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $AdditionalConfiguration,
        
        [Parameter(Mandatory = $true)]
        [ValidateSet(
            "Teradata",
            "DB2_Over_Z_OS", 
            "DB2_Over_AS_400",
            "NetApp",
            "Oracle_RDS", 
            "PostgreSQL_RDS"
        )]
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

        if (($Type -ne "PostgreSQL_RDS") -and ($PSBoundParameters.ContainsKey('UserName') -eq $false)) {
            Write-Error "UserName is required."
            break
        }
        if (($Type -ne "PostgreSQL_RDS") -and ($PSBoundParameters.ContainsKey('Password') -eq $false)) {
            Write-Error "UserName is required."
            break
        }

        $TypeValue = ""
        if ($Type -eq "Teradata") { $TypeValue = "1234567" }
        elseif ($Type -eq "DB2_Over_Z_OS") { $TypeValue = "500778815" }
        elseif ($Type -eq "DB2_Over_AS_400") { $TypeValue = "1038838319" }
        elseif ($Type -eq "NetApp") { $TypeValue = "NetApp" }
        elseif ($Type -eq "Oracle_RDS") { $TypeValue = "Oracle_RDS" }
        elseif ($Type -eq "PostgreSQL_RDS") { $TypeValue = "PostgreSql_RDS" }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/dbServices/$SiteName/$ServerGroupName/$ServiceName/logCollectors"
        
        $ApiBody = [ordered]@{}
        $ApiBody += @{ "display-name" = $DisplayName }
        $ApiBody += @{ "enabled" = $Enabled }

        if ($PSBoundParameters.ContainsKey('UserName')) {
            $ApiBody += @{ "gateway-name" = $GatewayName }
        }

        $ApiBody += @{ "protocol" = $Protocol }
        
        if ($PSBoundParameters.ContainsKey('UserName')) {
            $ApiBody += @{ "user-name" = $UserName }
        }
        if ($PSBoundParameters.ContainsKey('Password')) {
            $ApiBody += @{ "password" = $Password }
        }

        $ApiBody += @{ "host" = $DBHostName }

        if ($PSBoundParameters.ContainsKey('Location')) {
            $ApiBody += @{ "location" = $Location }
        }
        if ($PSBoundParameters.ContainsKey('DeleteProcessLogs')) {
            $ApiBody += @{ "delete-process-logs" = $DeleteProcessLogs }
        }
        
        $ApiBody += @{ "additional-configuration" = $AdditionalConfiguration }
        $ApiBody += @{ "type" = $TypeValue }

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
