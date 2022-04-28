function Set-SecureSphereHTTPProxyConfiguration {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [bool] $UseProxy,

        [Parameter(Mandatory = $false)]
        [string] $HostName,
        
        [Parameter(Mandatory = $false)]
        [ValidateRange(1, 65535)]
        [UInt32] $Port,
        
        [Parameter(Mandatory = $false)]
        [string] $User,
        
        [Parameter(Mandatory = $false)]
        [string] $Password, 
        
        [Parameter(Mandatory = $false)]
        [ValidateSet("Enum", "Basic", "Digest", "NTLM")]
        [ValidateNotNullOrEmpty()]
        [string] $AuthPolicy,
        
        [Parameter(Mandatory = $false)]
        [string] $Domain
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first"
            break
        }

        if ($UseProxy -eq $true) {
            if ($PSBoundParameters.ContainsKey('HostName') -eq $false) {
                Write-Error "HostName parameter is required when UseProxy is true"
                break
            }
            if ($PSBoundParameters.ContainsKey('Port') -eq $false) {
                Write-Error "Port parameter is required when UseProxy is true"
                break
            }
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/systemDefinitions/httpProxy"

        $ApiBody = [ordered]@{}
        $ApiBody += @{ "useProxy" = $UseProxy }

        if ($PSBoundParameters.ContainsKey('User')) {
            $ApiBody += @{ "user" = $User }
        }
        if ($PSBoundParameters.ContainsKey('User')) {
            $ApiBody += @{ "host" = $HostName }
        }
        if ($PSBoundParameters.ContainsKey('User')) {
            $ApiBody += @{ "port" = $Port }
        }
        if ($PSBoundParameters.ContainsKey('Password')) {
            $ApiBody += @{ "password" = $Password }
        }
        if ($PSBoundParameters.ContainsKey('AuthPolicy')) {
            $ApiBody += @{ "authPolicy" = $AuthPolicy }
        }
        if ($PSBoundParameters.ContainsKey('Domain')) {
            $ApiBody += @{ "Domain" = $Domain }
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
