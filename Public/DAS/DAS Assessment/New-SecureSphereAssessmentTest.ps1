function New-SecureSphereAssessmentTest {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $TestName,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $Description,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $Severity,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $Category,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $ScriptType,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $OSType,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $DBType,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $RecommendedFix,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $TestScript,
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string] $AdditionalScript,
        
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string[]] $ResultLayout
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/assessment/tests/$TestName"

        $ApiBody = [ordered]@{}

        $ApiBody += @{ "name" = $TestName }

        if ($PSBoundParameters.ContainsKey('Description')) {
            $ApiBody += @{ "description" = "$Description" }
        }

        $ApiBody += @{ "severity" = $Severity }
        $ApiBody += @{ "category" = $Category }
        $ApiBody += @{ "scriptType" = $ScriptType }
        $ApiBody += @{ "osType" = $OSType }
        $ApiBody += @{ "dbType" = $DBType }
        $ApiBody += @{ "recommended-fix" = $RecommendedFix }

        if ($PSBoundParameters.ContainsKey('TestScript')) {
            $ApiBody += @{ "test-script" = "$TestScript" }
        }
        if ($PSBoundParameters.ContainsKey('AdditionalScript')) {
            $ApiBody += @{ "additional-script" = "$AdditionalScript" }
        }
        
        $ApiBody += @{ "result-layout" = $ResultLayout }
        
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
