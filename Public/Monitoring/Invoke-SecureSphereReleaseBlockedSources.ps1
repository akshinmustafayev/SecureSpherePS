function Invoke-SecureSphereReleaseBlockedSources {
    # .ExternalHelp ..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Position = 0, Mandatory = $true, ParameterSetName = 'ByBlockedSource')]
        [ValidateNotNullOrEmpty()] 
        [BlockedSource] $BlockedSource,
        
        [Parameter(Position = 0, Mandatory = $true, ParameterSetName = 'ByBlockedSources')]
        [ValidateNotNullOrEmpty()] 
        [BlockedSource[]] $BlockedSources
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/monitor/blockedSources/release"

        $BlockedSourcesJson = ""
        if ($PSCmdlet.ParameterSetName -eq 'ByBlockedSource') {
            $BlockedSourcesJson = $BlockedSource.GetJson()
            Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] BlockedSourcesJson was for ByBlockedSource: $($BlockedSourcesJson)"
        }
        if ($PSCmdlet.ParameterSetName -eq 'ByBlockedSources') {
            $BlockedSourcesJson = $BlockedSources | ConvertTo-Json
            Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] BlockedSourcesJson was for ByBlockedSources: $($BlockedSourcesJson)"
        }

        $ApiBody = $BlockedSourcesJson
        $ApiBody = $ApiBody | ConvertTo-Json
    }
    Process {
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
