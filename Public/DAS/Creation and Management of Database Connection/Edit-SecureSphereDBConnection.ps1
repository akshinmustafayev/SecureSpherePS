function Edit-SecureSphereDBConnection {
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
        [string] $DBServiceName,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $ConnectionName,
        
        [Parameter(Mandatory = $false)]
        [ValidateRange(0, 65535)]
        [ValidateNotNullOrEmpty()]
        [UInt32] $Port,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $UserName,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $Password,
        
        [Parameter(Mandatory = $false)]
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
        [string] $Instance,
        
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

        if (($PSBoundParameters.ContainsKey('Port') -eq $false) -and
            ($PSBoundParameters.ContainsKey('UserName') -eq $false) -and
            ($PSBoundParameters.ContainsKey('Password') -eq $false) -and
            ($PSBoundParameters.ContainsKey('DBName') -eq $false) -and
            ($PSBoundParameters.ContainsKey('ServerName') -eq $false) -and
            ($PSBoundParameters.ContainsKey('UserMapping') -eq $false) -and
            ($PSBoundParameters.ContainsKey('ConnectionString') -eq $false) -and
            ($PSBoundParameters.ContainsKey('Instance') -eq $false) -and
            ($PSBoundParameters.ContainsKey('HomeDirectory') -eq $false) -and
            ($PSBoundParameters.ContainsKey('TnsAdmin') -eq $false) -and
            ($PSBoundParameters.ContainsKey('ServiceDirectory') -eq $false)) {
            Write-Error "At least one parameter to edit must be specified"
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/dbServices/$SiteName/$ServerGroupName/$DBServiceName/dbConnections/$ConnectionName"
    
        $ApiBody = [ordered]@{}
        if ($PSBoundParameters.ContainsKey('Port')) {
            $ApiBody += @{ "port" = $Port }
        }
        if ($PSBoundParameters.ContainsKey('UserName')) {
            $ApiBody += @{ "user-name" = $UserName }
        }
        if ($PSBoundParameters.ContainsKey('Password')) {
            $ApiBody += @{ "password" = $Password }
        }
        if ($PSBoundParameters.ContainsKey('DBName')) {
            $ApiBody += @{ "db-name" = $DBName }
        }
        if ($PSBoundParameters.ContainsKey('ServerName')) {
            $ApiBody += @{ "server-name" = $ServerName }
        }
        if ($PSBoundParameters.ContainsKey('UserMapping')) {
            $ApiBody += @{ "user-mapping" = $UserMapping }
        }
        if ($PSBoundParameters.ContainsKey('ConnectionString')) {
            $ApiBody += @{ "connection-string" = $ConnectionString }
        }
        if ($PSBoundParameters.ContainsKey('Instance')) {
            $ApiBody += @{ "instance" = $Instance }
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
