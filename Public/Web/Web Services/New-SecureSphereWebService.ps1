function New-SecureSphereWebService {
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
        [ValidateRange(1, 65535)]
        [ValidateNotNullOrEmpty()] 
        [UInt32[]] $Ports,
        
        [Parameter(Mandatory = $false)]
        [ValidateRange(1, 65535)]
        [ValidateNotNullOrEmpty()]
        [UInt32[]] $SslPorts,
         
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

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/webServices/$SiteName/$ServerGroupName/$WebServiceName"
        
        $ApiBody = [ordered]@{ }

        if ($PSBoundParameters.ContainsKey('Ports')) {
            $ApiBody += @{ "ports" = $Ports }
        }
        if ($PSBoundParameters.ContainsKey('SslPorts')) {
            $ApiBody += @{ "sslPorts" = $SslPorts }
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
            $Result = $null
            
            if ($ApiBody.Count -eq 0) {
                $Result = Invoke-RestMethod -Method Post -Uri $ApiUrl -ContentType "application/json" -WebSession $SecureSphereSession
            }
            else {
                $Result = Invoke-RestMethod -Method Post -Uri $ApiUrl -Body $ApiBody -ContentType "application/json" -WebSession $SecureSphereSession
            }
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
