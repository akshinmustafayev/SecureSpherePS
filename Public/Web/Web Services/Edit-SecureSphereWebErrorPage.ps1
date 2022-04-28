function Edit-SecureSphereWebErrorPage {
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
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()] 
        [bool] $UseDefaultErrorPage,
         
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()] 
        [string] $DefaultErrorPageRedirectURL,
         
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()] 
        [string] $DefaultErrorPageBody,
         
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()] 
        [string] $DefaultErrorPageResponseCode,
         
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()] 
        [string[]] $WebErrorPagePolicies
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        if (($PSBoundParameters.ContainsKey('UseDefaultErrorPage') -eq $false) -and
            ($PSBoundParameters.ContainsKey('DefaultErrorPageRedirectURL') -eq $false) -and
            ($PSBoundParameters.ContainsKey('DefaultErrorPageBody') -eq $false) -and
            ($PSBoundParameters.ContainsKey('DefaultErrorPageResponseCode') -eq $false) -and
            ($PSBoundParameters.ContainsKey('WebErrorPagePolicies') -eq $false)) {
            Write-Error "At least one parameter to edit must be specified."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/webServices/$SiteName/$ServerGroupName/$WebServiceName/errorPage"
        
        $ApiBody = [ordered]@{ }

        if ($PSBoundParameters.ContainsKey('UseDefaultErrorPage')) {
            $ApiBody += @{ "useDefaultErrorPage" = $UseDefaultErrorPage }
        }
        if ($PSBoundParameters.ContainsKey('DefaultErrorPageRedirectURL')) {
            $ApiBody += @{ "defaultErrorPageRedirectURL" = $DefaultErrorPageRedirectURL }
        }
        if ($PSBoundParameters.ContainsKey('DefaultErrorPageBody')) {
            $ApiBody += @{ "defaultErrorPageBody" = $DefaultErrorPageBody }
        }
        if ($PSBoundParameters.ContainsKey('DefaultErrorPageResponseCode')) {
            $ApiBody += @{ "defaultErrorPageResponseCode" = $DefaultErrorPageResponseCode }
        }
        if ($PSBoundParameters.ContainsKey('WebErrorPagePolicies')) {
            $ApiBody += @{ "webErrorPagePolicies" = $WebErrorPagePolicies }
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
