function Edit-SecureSphereWebErrorPage {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [string] $WebErrorPageName,
        
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [string] $ErrorPageContent,
        
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()] 
        [string] $HttpResponseCode,
        
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()] 
        [string] $RedirectUrl
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        if ($PSBoundParameters.ContainsKey('ErrorPageContent') -and $PSBoundParameters.ContainsKey('RedirectUrl')) {
            Write-Error "Exactly one of errorPageContent or redirectUrl must be specified."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/globalObjects/webErrorPageGroups/pages/$WebErrorPageName"

        $ApiBody = [ordered]@{ }

        if ($PSBoundParameters.ContainsKey('ErrorPageContent')) {
            $ApiBody += @{ "errorPageContent" = $ErrorPageContent }
        }
        if ($PSBoundParameters.ContainsKey('HttpResponseCode')) {
            $ApiBody += @{ "httpResponseCode" = $HttpResponseCode }
        }
        if ($PSBoundParameters.ContainsKey('RedirectUrl')) {
            $ApiBody += @{ "redirectUrl" = $RedirectUrl }
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
