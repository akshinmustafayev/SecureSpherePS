function Edit-SecureSphereWebOutboundKRPRule {
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
        [ValidateNotNullOrEmpty()]
        [string] $GatewayGroupName,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $AliasName,
        
        [Parameter(Mandatory = $true)] 
        [ValidateRange(0, 65535)]
        [ValidateNotNullOrEmpty()]
        [UInt32] $GatewayPort,
         
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [UInt32] $Priority,

        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $ExternalHost,
         
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [string] $UrlPrefix,
         
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [string] $InternalIpHost, 
        
        [Parameter(Mandatory = $true)]
        [ValidateRange(0, 65535)]
        [ValidateNotNullOrEmpty()]
        [UInt32] $ServerPort, 
          
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()] 
        [bool] $Encrypt, 
         
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [string] $ClientAuthenticationRules, 
         
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()] 
        [bool] $ValidateServerCertificate, 
         
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $ClientCertificate,
          
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()] 
        [string] $ServerSideSslSettings
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/webServices/$SiteName/$ServerGroupName/$WebServiceName/krpInboundRules/$GatewayGroupName/$AliasName/$GatewayPort/krpOutboundRules/$Priority"

        $ApiBody = [ordered]@{ 
            "internalIpHost" = $InternalIpHost;
            "serverPort"     = $ServerPort;
        }

        if ($PSBoundParameters.ContainsKey('ExternalHost')) {
            $ApiBody += @{ "externalHost" = $ExternalHost }
        }
        if ($PSBoundParameters.ContainsKey('UrlPrefix')) {
            $ApiBody += @{ "urlPrefix" = $UrlPrefix }
        }
        if ($PSBoundParameters.ContainsKey('Encrypt')) {
            $ApiBody += @{ "encrypt" = $Encrypt }
        }
        if ($PSBoundParameters.ContainsKey('ClientAuthenticationRules')) {
            $ApiBody += @{ "clientAuthenticationRules" = $ClientAuthenticationRules }
        }
        if ($PSBoundParameters.ContainsKey('ValidateServerCertificate')) {
            $ApiBody += @{ "validateServerCertificate" = $ValidateServerCertificate }
        }
        if ($PSBoundParameters.ContainsKey('ClientCertificate')) {
            $ApiBody += @{ "clientCertificate" = $ClientCertificate }
        }
        if ($PSBoundParameters.ContainsKey('ServerSideSslSettings')) {
            $ApiBody += @{ "serverSideSslSettings" = $ServerSideSslSettings }
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
