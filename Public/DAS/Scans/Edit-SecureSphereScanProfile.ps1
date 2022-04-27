function Edit-SecureSphereScanProfile {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $ProfileName,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string[]] $DataTypes,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [double] $DataSampleAccuracy,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $DBAndSchemasUsage,
        
        [Parameter(Mandatory = $true)]
        $DBAndSchemas,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [UInt32] $DelayBetweenQueries
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/Classification/Profile/$ProfileName"
        
        $ApiBody = [ordered]@{}
        $ApiBody += @{ "data-types" = $DataTypes }
        $ApiBody += @{ "data-sample-accuracy" = $DataSampleAccuracy }
        $ApiBody += @{ "db-and-schemas-usage" = $DBAndSchemasUsage }
        $ApiBody += @{ "db-and-schemas" = $DBAndSchemas }
        $ApiBody += @{ "delay-between-queries" = $DelayBetweenQueries }
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
