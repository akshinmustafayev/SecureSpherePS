function New-SecureSphereWebTransparentReverseProxyRule {
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
        
        [Parameter(Mandatory = $true)] 
        [ValidateIPAddress()]
        [ValidateNotNullOrEmpty()] 
        [string] $ServerIPAddress,
        
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [string] $ListenerPortList, 
        
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [string] $Certificate,
        
        [Parameter(Mandatory = $true)] 
        [ValidateRange(0, 65535)]
        [ValidateNotNullOrEmpty()] 
        [UInt32] $ServerSidePort, 
        
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [bool] $EncryptServerConnection, 
         
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $ClientSideSSLSettings, 
          
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [string] $ServerSideSSLSettings
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/gateways/$GatewayName/reverseProxy/addresses/$ServerIPAddress"

        $ApiBody = [ordered]@{ 
            "serverSidePort" = $ServerSidePort;
        }

        if ($PSBoundParameters.ContainsKey('Certificate')) {
            $ApiBody += @{ "certificate" = $Certificate }
        }
        if ($PSBoundParameters.ContainsKey('EncryptServerConnection')) {
            $ApiBody += @{ "encryptServerConnection" = $EncryptServerConnection }
        }
        if ($PSBoundParameters.ContainsKey('ClientSideSSLSettings')) {
            $ApiBody += @{ "clientSideSSLSettings" = $ClientSideSSLSettings }
        }
        if ($PSBoundParameters.ContainsKey('ServerSideSSLSettings')) {
            $ApiBody += @{ "serverSideSSLSettings" = $ServerSideSSLSettings }
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
