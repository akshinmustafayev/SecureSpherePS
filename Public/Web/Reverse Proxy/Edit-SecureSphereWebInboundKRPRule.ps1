function Edit-SecureSphereWebInboundKRPRule {
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

        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [string] $NewAliasName,
         
        [Parameter(Mandatory = $false)]
        [ValidateRange(0, 65535)]
        [ValidateNotNullOrEmpty()]
        [UInt32[]] $GatewayPorts,
          
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()] 
        [string] $NewGatewayGroupName,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $ClientSideSslSettings, 
          
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $ServerCertificate,
          
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()] 
        [string] $ClientAuthenticationAuthorities
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        if (($PSBoundParameters.ContainsKey('NewAliasName') -eq $false) -and
            ($PSBoundParameters.ContainsKey('GatewayPorts') -eq $false) -and
            ($PSBoundParameters.ContainsKey('NewGatewayGroupName') -eq $false) -and
            ($PSBoundParameters.ContainsKey('ClientSideSslSettings') -eq $false) -and
            ($PSBoundParameters.ContainsKey('ServerCertificate') -eq $false) -and
            ($PSBoundParameters.ContainsKey('ClientAuthenticationAuthorities') -eq $false)) {
            Write-Error "At least one parameter to edit must be specified."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/webServices/$SiteName/$ServerGroupName/$WebServiceName/krpInboundRules/$GatewayGroupName/$AliasName/$GatewayPort"

        $ApiBody = [ordered]@{ }

        if ($PSBoundParameters.ContainsKey('NewAliasName')) {
            $ApiBody += @{ "aliasName" = $NewAliasName }
        }
        if ($PSBoundParameters.ContainsKey('GatewayPorts')) {
            $ApiBody += @{ "gatewayPorts" = $GatewayPorts }
        }
        if ($PSBoundParameters.ContainsKey('NewGatewayGroupName')) {
            $ApiBody += @{ "gatewayGroupName" = $NewGatewayGroupName }
        }
        if ($PSBoundParameters.ContainsKey('ClientSideSslSettings')) {
            $ApiBody += @{ "clientSideSslSettings" = $ClientSideSslSettings }
        }
        if ($PSBoundParameters.ContainsKey('ServerCertificate')) {
            $ApiBody += @{ "serverCertificate" = $ServerCertificate }
        }
        if ($PSBoundParameters.ContainsKey('ClientAuthenticationAuthorities')) {
            $ApiBody += @{ "clientAuthenticationAuthorities" = $ClientAuthenticationAuthorities }
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
