function New-SecureSphereWebInboundKRPRule {
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
        [string] $ClientSideSslSettings, 

        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [string] $ServerCertificate, 

        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [string] $ClientAuthenticationAuthorities, 
        
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        $OutboundRules
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/webServices/$SiteName/$ServerGroupName/$WebServiceName/krpInboundRules/$GatewayGroupName/$AliasName/$GatewayPort"

        $ApiBody = [ordered]@{}
        if ($PSBoundParameters.ContainsKey('ClientSideSslSettings')) {
            $ApiBody += @{ "clientSideSslSettings" = $ClientSideSslSettings }
        }
        if ($PSBoundParameters.ContainsKey('ServerCertificate')) {
            $ApiBody += @{ "serverCertificate" = $ServerCertificate }
        }
        if ($PSBoundParameters.ContainsKey('ClientAuthenticationAuthorities')) {
            $ApiBody += @{ "clientAuthenticationAuthorities" = $ClientAuthenticationAuthorities }
        }
        $ApiBody = $OutboundRules

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
