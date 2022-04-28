function Edit-SecureSphereWebService {
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
        [string] $WebServiceName,

        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()] 
        [string] $NewName,
        
        [Parameter(Mandatory = $false)] 
        [ValidateRange(1, 65535)]
        [ValidateNotNullOrEmpty()] 
        [UInt32[]] $Ports,
        
        [Parameter(Mandatory = $false)]
        [ValidateRange(1, 65535)]
        [ValidateNotNullOrEmpty()]
        [UInt32[]] $SslPorts,

        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [string] $DefaultApplication,
         
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [bool] $TrpMode
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        if (($PSBoundParameters.ContainsKey('NewName') -eq $false) -and
            ($PSBoundParameters.ContainsKey('Ports') -eq $false) -and
            ($PSBoundParameters.ContainsKey('SslPorts') -eq $false) -and
            ($PSBoundParameters.ContainsKey('DefaultApplication') -eq $false) -and
            ($PSBoundParameters.ContainsKey('TrpMode') -eq $false)) {
            Write-Error "At least one parameter to edit must be specified."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/webServices/$SiteName/$ServerGroupName/$WebServiceName"
        
        $ApiBody = [ordered]@{ }

        if ($PSBoundParameters.ContainsKey('Name')) {
            $ApiBody += @{ "name" = $NewName }
        }
        if ($PSBoundParameters.ContainsKey('Ports')) {
            $ApiBody += @{ "ports" = $Ports }
        }
        if ($PSBoundParameters.ContainsKey('SslPorts')) {
            $ApiBody += @{ "sslPorts" = $SslPorts }
        }
        if ($PSBoundParameters.ContainsKey('DefaultApplication')) {
            $ApiBody += @{ "default-application" = $DefaultApplication }
        }
        if ($PSBoundParameters.ContainsKey('TrpMode')) {
            $ApiBody += @{ "trpMode" = $TrpMode }
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
