function New-SecureSphereDBConnection {
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
        [string] $ConnectionName,
        
        [Parameter(Mandatory = $true)]
        [ValidateIPAddress()]
        [ValidateNotNullOrEmpty()]
        [string] $IPAddress,
        
        [Parameter(Mandatory = $true)]
        [ValidateRange(0, 65535)]
        [ValidateNotNullOrEmpty()]
        [UInt32] $Port,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $UserName,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $Password,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $DBName,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $ServerName,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $UserMapping,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        $Instance,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $ConnectionString,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $HomeDirectory,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $TnsAdmin,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $ServiceDirectory
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/dbServices/$SiteName/$ServerGroupName/$ServiceName/dbConnections/$ConnectionName"
    
        $ApiBody = [ordered]@{}
        $ApiBody += @{ "ip-address" = $IPAddress }
        $ApiBody += @{ "port" = $Port }
        $ApiBody += @{ "user-name" = $UserName }
        $ApiBody += @{ "password" = $Password }
        $ApiBody += @{ "db-name" = $DBName }

        if ($PSBoundParameters.ContainsKey('ServerName')) {
            $ApiBody += @{ "server-name" = $ServerName }
        }
        if ($PSBoundParameters.ContainsKey('UserMapping')) {
            $ApiBody += @{ "user-mapping" = $UserMapping }
        }
        if ($PSBoundParameters.ContainsKey('Instance')) {
            $ApiBody += @{ "instance" = $Instance }
        }
        if ($PSBoundParameters.ContainsKey('ConnectionString')) {
            $ApiBody += @{ "connection-string" = $ConnectionString }
        }
        if ($PSBoundParameters.ContainsKey('HomeDirectory')) {
            $ApiBody += @{ "home-directory" = $HomeDirectory }
        }
        if ($PSBoundParameters.ContainsKey('TnsAdmin')) {
            $ApiBody += @{ "tns-admin" = $TnsAdmin }
        }
        if ($PSBoundParameters.ContainsKey('ServiceDirectory')) {
            $ApiBody += @{ "service-directory" = $ServiceDirectory }
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
