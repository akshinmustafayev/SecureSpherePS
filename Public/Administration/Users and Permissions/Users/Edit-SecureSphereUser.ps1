function Edit-SecureSphereUser {
    # .ExternalHelp ..\..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $UserName,
        
        [Parameter(Mandatory = $false)]
        [ValidateSet(
            "SecureSphere",
            "External"
        )]
        [ValidateNotNullOrEmpty()]
        [string] $Authenticator,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $Password,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [bool] $Enabled = $true,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [bool] $Locked = $false,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [bool] $ReadOnly = $false,
        
        [Parameter(Mandatory = $false)]
        [string] $FullName,
        
        [Parameter(Mandatory = $false)]
        [string] $Email,
        
        [Parameter(Mandatory = $false)]
        [string] $Phone,
        
        [Parameter(Mandatory = $false)]
        [string] $Title,
        
        [Parameter(Mandatory = $false)]
        [string] $Location,
        
        [Parameter(Mandatory = $false)]
        [string] $Department,
        
        [Parameter(Mandatory = $false)]
        [string[]] $Roles
    )
    
    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        if (($Authenticator -eq "SecureSphere") -and ($PSBoundParameters.ContainsKey('Password') -eq $false)) {
            Write-Error "For SecureSphere type authentication Password value is mandatory. Please specify Password for new user."
            break
        }

        if ($UserName.Contains(" ")) {
            Write-Error "User name can not contain spaces"
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/users/$UserName"

        $ApiBody = [ordered]@{}
        if ($PSBoundParameters.ContainsKey('Authenticator')) {
            $ApiBody += @{"authenticator" = $Authenticator }
        }
        if ($PSBoundParameters.ContainsKey('Password')) {
            $ApiBody += @{"password" = $Password }
        }
        if ($PSBoundParameters.ContainsKey('IsEnabled')) {
            $ApiBody += @{"Enabled" = $IsEnabled }
        }
        if ($PSBoundParameters.ContainsKey('Locked')) {
            $ApiBody += @{"Locked" = $Locked }
        }
        if ($PSBoundParameters.ContainsKey('ReadOnly')) {
            $ApiBody += @{"ReadOnly" = $ReadOnly }
        }
        if ($PSBoundParameters.ContainsKey('FullName')) {
            $ApiBody += @{"Full Name" = $FullName }
        }
        if ($PSBoundParameters.ContainsKey('Email')) {
            $ApiBody += @{"Email" = $Email }
        }
        if ($PSBoundParameters.ContainsKey('Phone')) {
            $ApiBody += @{"Phone" = $Phone }
        }
        if ($PSBoundParameters.ContainsKey('Title')) {
            $ApiBody += @{"Title" = $Title }
        }
        if ($PSBoundParameters.ContainsKey('Location')) {
            $ApiBody += @{"Location" = $Location }
        }
        if ($PSBoundParameters.ContainsKey('Department')) {
            $ApiBody += @{"Department" = $Department }
        }
        if ($PSBoundParameters.ContainsKey('Roles')) {
            $ApiBody += @{"Roles" = $Roles }
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
