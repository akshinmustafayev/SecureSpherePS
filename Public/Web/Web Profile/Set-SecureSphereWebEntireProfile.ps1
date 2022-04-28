function Set-SecureSphereWebEntireProfile {
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
        
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()] 
        [string] $LearnedHosts,

        [Parameter(Mandatory = $false)] 
        $PatternUrls,

        [Parameter(Mandatory = $false)] 
        $Cookies,

        [Parameter(Mandatory = $false)] 
        $ActionUrls,

        [Parameter(Mandatory = $false)] 
        $SusceptibleDirectories,

        [Parameter(Mandatory = $false)] 
        $WebProfileUrls,

        [Parameter(Mandatory = $false)] 
        $Headers
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/webProfile/$SiteName/$ServerGroupName/$WebServiceName/$WebApplicationName"
    
        $ApiBody = [ordered]@{ }

        if ($PSBoundParameters.ContainsKey('LearnedHosts')) {
            $LearnedHostsData = $LearnedHosts | ConvertTo-Json
            $ApiBody += @{ "learnedHosts" = $LearnedHostsData }
        }
        if ($PSBoundParameters.ContainsKey('PatternUrls')) {
            $PatternUrlsData = $PatternUrls | ConvertTo-Json
            $ApiBody += @{ "patternUrls" = $PatternUrlsData }
        }
        if ($PSBoundParameters.ContainsKey('Cookies')) {
            $CookiesData = $Cookies | ConvertTo-Json
            $ApiBody += @{ "cookies" = $CookiesData }
        }
        if ($PSBoundParameters.ContainsKey('ActionUrls')) {
            $ActionUrlsData = $ActionUrls | ConvertTo-Json
            $ApiBody += @{ "actionUrls" = $ActionUrlsData }
        }
        if ($PSBoundParameters.ContainsKey('SusceptibleDirectories')) {
            $SusceptibleDirectoriesData = $SusceptibleDirectories | ConvertTo-Json
            $ApiBody += @{ "susceptibleDirectories" = $SusceptibleDirectoriesData }
        }
        if ($PSBoundParameters.ContainsKey('WebProfileUrls')) {
            $WebProfileUrlsData = $WebProfileUrls | ConvertTo-Json
            $ApiBody += @{ "webProfileUrls" = $WebProfileUrlsData }
        }
        if ($PSBoundParameters.ContainsKey('Headers')) {
            $HeadersData = $Headers | ConvertTo-Json
            $ApiBody += @{ "headers" = $HeadersData }
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
