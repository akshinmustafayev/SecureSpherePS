function Set-SecureSphereDBTag {
    # .ExternalHelp ..\..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $TagName,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        $Objects,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        $Targets
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/tags/$TagName/taggedObjects"

        $ApiBody = [ordered]@{
            "objects" = $Objects;
        }

        if ($PSBoundParameters.ContainsKey('Targets')) {
            $ApiBody += @{ "targets" = $Targets }
        }
        else {
            $ApiBody += @{ "targets" = @() }
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
