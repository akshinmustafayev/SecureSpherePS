function New-SecureSphereAssessmentScan {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $ScanName,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $Type,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $PolicyName,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [bool] $PreTest,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string[]] $PolicyTags,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string[]] $DBConnectionTags,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string[]] $ApplyTo,
        
        [Parameter(Mandatory = $true)]
        $Scheduling
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/assessment/scans/$ScanName"
        
        $ApiBody = [ordered]@{}
        $ApiBody += @{ "type" = $Type }
        $ApiBody += @{ "policy-name" = $PolicyName }
        if ($PSBoundParameters.ContainsKey('PreTest')) {
            $ApiBody += @{ "pre-test" = $PreTest }
        }
        if ($PSBoundParameters.ContainsKey('PolicyTags')) {
            $ApiBody += @{ "policy-tags" = $PolicyTags }
        }
        if ($PSBoundParameters.ContainsKey('DBConnectionTags')) {
            $ApiBody += @{ "db-connection-tags" = $DBConnectionTags }
        }
        $ApiBody += @{ "apply-to" = $ApplyTo }
        $ApiBody += @{ "scheduling" = $Scheduling }
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
