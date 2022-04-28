function New-SecureSphereWebApplication {
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

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/webApplications/$SiteName/$ServerGroupName/$WebServiceName/$WebApplicationName"
        
        $ApiBody = [ordered]@{ }

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
