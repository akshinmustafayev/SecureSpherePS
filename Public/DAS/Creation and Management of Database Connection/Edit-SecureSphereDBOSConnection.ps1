function Edit-SecureSphereDBOSConnection {
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
        [ValidateIPAddress()]
        [ValidateNotNullOrEmpty()]
        [string] $IPAddress,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $HostName,
        
        [Parameter(Mandatory = $false)]
        [ValidateSet(
            "Windows", 
            "Linux",
            "Solaris",
            "HP-UX", 
            "AIX",
            "Z/OS"
        )]
        [ValidateNotNullOrEmpty()]
        [string] $OSType, 
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $UserName,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $Password,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $ConnectionMode,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $ShareName,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $FolderPath,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $Domain
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        # Additional checks. Decided to add because of the error codes specified in the official documentation
        if (($PSBoundParameters.ContainsKey('Domain') -eq $true) -and
            ($PSBoundParameters.ContainsKey('UserName') -eq $false)) {
            Write-Error "Username needs to be populated if domain is populated."
            break
        }

        if (($PSBoundParameters.ContainsKey('FolderPath') -eq $true) -and
            ($PSBoundParameters.ContainsKey('UserName') -eq $false)) {
            Write-Error "Username needs to be populated if folder path is populated."
            break
        }

        if (($PSBoundParameters.ContainsKey('ShareName') -eq $true) -and
            ($PSBoundParameters.ContainsKey('UserName') -eq $false)) {
            Write-Error "Username needs to be populated if share name is populated."
            break
        }

        if (($PSBoundParameters.ContainsKey('ConnectionMode') -eq $true) -and
            ($PSBoundParameters.ContainsKey('UserName') -eq $false)) {
            Write-Error "Username needs to be populated if connection mode is populated."
            break
        }

        if (($PSBoundParameters.ContainsKey('HostName') -eq $false) -and
            ($PSBoundParameters.ContainsKey('OSType') -eq $false) -and
            ($PSBoundParameters.ContainsKey('UserName') -eq $false) -and
            ($PSBoundParameters.ContainsKey('Password') -eq $false) -and
            ($PSBoundParameters.ContainsKey('ConnectionMode') -eq $false) -and
            ($PSBoundParameters.ContainsKey('ShareName') -eq $false) -and
            ($PSBoundParameters.ContainsKey('FolderPath') -eq $false) -and
            ($PSBoundParameters.ContainsKey('Domain') -eq $false)) {
            Write-Error "At least one parameter must be specified"
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/serverGroups/$SiteName/$ServerGroupName/servers/$IPAddress"
    
        $ApiBody = [ordered]@{}
        if ($PSBoundParameters.ContainsKey('HostName')) {
            $ApiBody += @{ "host-name" = $HostName }
        }
        if ($PSBoundParameters.ContainsKey('OSType')) {
            $ApiBody += @{ "OS-type" = $OSType }
        }
        if ($PSBoundParameters.ContainsKey('UserName')) {
            $ApiBody += @{ "user-name" = $UserName }
        }
        if ($PSBoundParameters.ContainsKey('Password')) {
            $ApiBody += @{ "password" = $Password }
        }
        if ($PSBoundParameters.ContainsKey('ConnectionMode')) {
            $ApiBody += @{ "connection-mode" = $ConnectionMode }
        }
        if ($PSBoundParameters.ContainsKey('ShareName')) {
            $ApiBody += @{ "share-name" = $ShareName }
        }
        if ($PSBoundParameters.ContainsKey('FolderPath')) {
            $ApiBody += @{ "folder-path" = $FolderPath }
        }
        if ($PSBoundParameters.ContainsKey('Domain')) {
            $ApiBody += @{ "domain" = $Domain }
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
