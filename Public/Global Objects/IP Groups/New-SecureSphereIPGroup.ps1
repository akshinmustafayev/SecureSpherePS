function New-SecureSphereIPGroup {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Position = 0, Mandatory = $true)]
        [ValidateNotNullOrEmpty()] 
        [string] $IPGroupName,

        [Parameter(Position = 1, Mandatory = $true, ParameterSetName = 'ByIPEntry')]
        $IPEntry,
        
        [Parameter(Position = 1, Mandatory = $true, ParameterSetName = 'ByIPEntries')]
        $IPEntries
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/ipGroups/$IPGroupName"

        $IPEntriesJson = ""
        if ($PSCmdlet.ParameterSetName -eq 'ByIPEntry') {
            $IPEntriesJson = $IPEntry.GetJson()
            Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] IPEntriesJson was for ByIPEntry: $($IPEntriesJson)"
        }
        if ($PSCmdlet.ParameterSetName -eq 'ByIPEntries') {
            $IPEntriesJson = $IPEntries | ConvertTo-Json
            Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] IPEntriesJson was for ByIPEntries: $($IPEntriesJson)"
        }

        $ApiBody = [ordered]@{}
        $ApiBody += @{ "entries" = $IPEntriesJson }
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
