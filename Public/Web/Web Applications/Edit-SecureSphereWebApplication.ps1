function Edit-SecureSphereWebApplication {
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
         
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [string] $WebApplicationName,

        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [string] $NewWebApplicationName,
        
        [Parameter(Mandatory = $false)]
        [ValidateSet(
            "LearnAll",
            "LearnAllExceptStatics", 
            "LearnUrlsWithParams"
        )]
        [ValidateNotNullOrEmpty()] 
        [string] $LearnSettings,

        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [bool] $ParseOCSPRequests,
         
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()] 
        [string] $RestrictMonitoringToUrl,
        
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()] 
        [string] $IgnoreUrlsDirectories
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        if (($PSBoundParameters.ContainsKey('NewWebApplicationName') -eq $false) -and
            ($PSBoundParameters.ContainsKey('LearnSettings') -eq $false) -and
            ($PSBoundParameters.ContainsKey('ParseOCSPRequests') -eq $false) -and
            ($PSBoundParameters.ContainsKey('RestrictMonitoringToUrl') -eq $false) -and
            ($PSBoundParameters.ContainsKey('IgnoreUrlsDirectories') -eq $false)) {
            Write-Error "At least one parameter to edit must be specified."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/webApplications/$SiteName/$ServerGroupName/$WebServiceName/$WebApplicationName"
        
        $ApiBody = [ordered]@{ }

        if ($PSBoundParameters.ContainsKey('NewWebApplicationName')) {
            $ApiBody += @{ "appName" = $NewWebApplicationName }
        }
        if ($PSBoundParameters.ContainsKey('LearnSettings')) {
            $ApiBody += @{ "learnSettings" = $LearnSettings }
        }
        if ($PSBoundParameters.ContainsKey('ParseOCSPRequests')) {
            $ApiBody += @{ "parseOCSPRequests" = $ParseOCSPRequests }
        }
        if ($PSBoundParameters.ContainsKey('RestrictMonitoringToUrl')) {
            $ApiBody += @{ "restrictMonitoringToUrl" = $RestrictMonitoringToUrl }
        }
        if ($PSBoundParameters.ContainsKey('IgnoreUrlsDirectories')) {
            $ApiBody += @{ "ignoreUrlsDirectories" = $IgnoreUrlsDirectories }
        }

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
