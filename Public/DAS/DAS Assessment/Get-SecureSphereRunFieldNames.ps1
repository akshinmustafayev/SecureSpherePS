function Get-SecureSphereRunFieldNames {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [UInt64[]] $RunIds,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $StartDate,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $EndDate 
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/dasAssessment/runFields"

        $ApiBody = [ordered]@{}
        if ($PSBoundParameters.ContainsKey('RunIds')) {
            $ApiBody += @{ "run-ids" = $RunIds }
        }
        if ($PSBoundParameters.ContainsKey('StartDate')) {
            $ApiBody += @{ "start-date" = $StartDate }
        }
        if ($PSBoundParameters.ContainsKey('EndDate')) {
            $ApiBody += @{ "end-date" = $EndDate }
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
