function Invoke-SecureSphereIncrementalOperationsOnLookupDataSet {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [string] $DataSetName,

        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()] 
        [bool] $Overwrite,
        
        [Parameter(Mandatory = $true)]
        $Data
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/dataSets/$DataSetName/data"

        if ($PSBoundParameters.ContainsKey('Overwrite') -eq $true) {
            $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/dataSets/$DataSetName/data?overwrite=$Overwrite"
        }

        $ApiBody = $Data
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
