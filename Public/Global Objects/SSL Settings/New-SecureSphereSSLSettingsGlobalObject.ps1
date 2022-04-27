function New-SecureSphereSSLSettingsGlobalObject {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()] 
        [string] $SslSettingsName,
         
        [Parameter(Mandatory = $true)] 
        [ValidateSet("TLSv1", "TLSv1.1", "TLSv1.2")]
        [ValidateNotNullOrEmpty()] 
        [string[]] $SslProtocolVersions,
        
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [bool] $EnforceRPServerSideCipherPriority,
         
        [Parameter(Mandatory = $true)] 
        [ValidateSet(
            "TLS_RSA_WITH_AES_256_CBC_SHA", 
            "TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 
            "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 
            "TLS_RSA_WITH_AES_128_CBC_SHA", 
            "TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 
            "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 
            "TLS_RSA_WITH_AES_256_CBC_SHA256", 
            "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 
            "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 
            "TLS_RSA_WITH_AES_128_CBC_SHA256", 
            "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 
            "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 
            "TLS_RSA_WITH_AES_128_GCM_SHA256", 
            "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", 
            "TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 
            "TLS_RSA_WITH_AES_256_GCM_SHA384", 
            "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", 
            "TLS_RSA_WITH_3DES_EDE_CBC_SHA"
        )] 
        [ValidateNotNullOrEmpty()] 
        [string[]] $ActiveCiphers,
        
        [Parameter(Mandatory = $false)] 
        [ValidateSet(
            "secp192r1", 
            "secp224r1",
            "secp256r1",
            "secp384r1", 
            "secp521r1"
        )]
        [string[]] $ActiveEllipticCurves
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/globalObjects/sslSettings/$SslSettingsName"

        $ApiBody = [ordered]@{}

        $ApiBody += @{ "sslProtocolVersions" = $SslProtocolVersions }

        if ($PSBoundParameters.ContainsKey('EnforceRPServerSideCipherPriority')) {
            $ApiBody += @{ "enforceRPServerSideCipherPriority" = $EnforceRPServerSideCipherPriority }
        }
        else {
            $ApiBody += @{ "enforceRPServerSideCipherPriority" = "false" }
        }
        
        $ApiBody += @{ "activeCiphers" = $ActiveCiphers }

        if ($PSBoundParameters.ContainsKey('ActiveEllipticCurves')) {
            $ApiBody += @{ "activeEllipticCurves" = $ActiveEllipticCurves }
        }
        else {
            $ApiBody += @{ "activeEllipticCurves" = @() }
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
