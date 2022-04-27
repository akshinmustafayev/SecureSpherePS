function Edit-SecureSphereWebReverseProxyIPAddress {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()] 
        [string] $GatewayName,
        
        [Parameter(Mandatory = $true)] 
        [ValidateIPAddress()]
        [ValidateNotNullOrEmpty()] 
        [string] $IPAddress,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $NetworkInterface,
          
        [Parameter(Mandatory = $false)] 
        [ValidateSet(0 - 32)]
        [ValidateNotNullOrEmpty()] 
        [UInt32] $Mask,
        
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()] 
        [bool] $VirtualAddress,

        [Parameter(Mandatory = $false)] 
        [ValidateSet(1 - 255)]
        [ValidateNotNullOrEmpty()] 
        [UInt32] $VrId,
        
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()] 
        [string] $NextHop,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $Comment
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        if (($PSBoundParameters.ContainsKey('NetworkInterface') -eq $false) -and
            ($PSBoundParameters.ContainsKey('Mask') -eq $false) -and
            ($PSBoundParameters.ContainsKey('VirtualAddress') -eq $false) -and
            ($PSBoundParameters.ContainsKey('VrId') -eq $false) -and
            ($PSBoundParameters.ContainsKey('NextHop') -eq $false) -and
            ($PSBoundParameters.ContainsKey('Comment') -eq $false)) {
            Write-Error "At least one parameter to edit must be specified."
            break
        }

        if (($PSBoundParameters.ContainsKey('VirtualAddress') -eq $true) -and ($PSBoundParameters.ContainsKey('VrId') -eq $false)) {
            if ($VirtualAddress -eq $true) {
                Write-Error "VrId is required when VirtualAddress is true"
                break
            }
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/gateways/$GatewayName/reverseProxy/addresses/$IPAddress"

        $ApiBody = [ordered]@{ }

        if ($PSBoundParameters.ContainsKey('NetworkInterface')) {
            $ApiBody += @{ "networkInterface" = $NetworkInterface }
        }
        if ($PSBoundParameters.ContainsKey('Mask')) {
            $ApiBody += @{ "mask" = $Mask }
        }
        if ($PSBoundParameters.ContainsKey('VirtualAddress')) {
            $ApiBody += @{ "virtualAddress" = $VirtualAddress }
        }
        if ($PSBoundParameters.ContainsKey('VrId')) {
            $ApiBody += @{ "vrId" = $VrId }
        }
        if ($PSBoundParameters.ContainsKey('NextHop')) {
            $ApiBody += @{ "nextHop" = $NextHop }
        }
        if ($PSBoundParameters.ContainsKey('Comment')) {
            $ApiBody += @{ "comment" = $Comment }
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
