function Edit-SecureSphereWebAdvancedHTTPSettings {
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
        [UInt32] $ConnectionTimeout,
         
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [bool] $JsessionIDParamsAsRegularParams,
          
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [string] $JsessionIDParamsDelimiter,
        
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [bool] $CaseSensitiveUrls, 
        
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()]
        [bool] $SupportMsEncoding, 
        
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [bool] $CombineParameterNamesWithEmptyValue
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/webServices/$SiteName/$ServerGroupName/$WebServiceName/advancedHttpSettings"
        
        $ApiBody = [ordered]@{
            "connectionTimeout"                   = $ConnectionTimeout;
            "jsessionIDParamsAsRegularParams"     = $JsessionIDParamsAsRegularParams ;
            "jsessionIDParamsDelimiter"           = $JsessionIDParamsDelimiter;
            "caseSensitiveUrls"                   = $CaseSensitiveUrls;
            "supportMsEncoding"                   = $SupportMsEncoding;
            "combineParameterNamesWithEmptyValue" = $CombineParameterNamesWithEmptyValue;
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
