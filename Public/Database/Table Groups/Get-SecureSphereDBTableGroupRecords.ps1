function Get-SecureSphereDBTableGroupRecords {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()] 
        [string] $TableGroupName,

        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()] 
        [UInt32] $From,

        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()] 
        [UInt32] $To
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        if (($PSBoundParameters.ContainsKey('From') -eq $true) -and
            ($PSBoundParameters.ContainsKey('To') -eq $false)) {
            Write-Error "When From parameter is specified, To parameter must be speicifed as well."
            break
        }

        if (($PSBoundParameters.ContainsKey('From') -eq $false) -and
            ($PSBoundParameters.ContainsKey('To') -eq $true)) {
            Write-Error "When To parameter is specified, From parameter must be speicifed as well."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/tableGroups/$TableGroupName/data"

        if (($PSBoundParameters.ContainsKey('From') -eq $true) -and
            ($PSBoundParameters.ContainsKey('To') -eq $true)) {
            $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/tableGroups/$TableGroupName/data?from=$From&to=$To"
        }
    }
    Process {
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] ParameterSetName: $($PsCmdlet.ParameterSetName)"
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] PSBoundParameters: $($PSBoundParameters | Out-String)"

        try {
            $Result = Invoke-RestMethod -Method Get -Uri $ApiUrl -ContentType "application/json" -WebSession $SecureSphereSession
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
