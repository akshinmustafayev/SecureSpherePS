function Edit-SecureSphereSignature {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $DictionaryGroup,
         
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()] 
        [string] $DictionaryName,
         
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [string] $SignatureName,
        
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [string] $Pattern,
        
        [Parameter(Mandatory = $false)]
        [ValidateSet(
            "ClientToServer",
            "ServerToClient", 
            "BothDirections"
        )]
        [ValidateNotNullOrEmpty()] 
        [string] $ApplyTo,
         
        [Parameter(Mandatory = $true)]
        [ValidateSet(
            "http",
            "https"
        )]
        [ValidateNotNullOrEmpty()] 
        [string[]] $Protocols,
         
        [Parameter(Mandatory = $false)]
        [ValidateSet(
            "Query", 
            "ParsedQuery", 
            "Url",
            "Parameters",
            "Stream", 
            "Headers", 
            "UrlsAndParameters", 
            "ResponseContent",
            "onNormalizedUrl", 
            "SqlInjection", 
            "CrossSiteScripting",
            "DirectoryTraversal",
            "DataLeakage", 
            "RequestBody"
        )]
        [ValidateNotNullOrEmpty()]
        [string[]] $SearchIn,
          
        [Parameter(Mandatory = $false)]
        [ValidateSet(
            "EnabledInAllDictionaries", 
            "diableFromThisDictionary",
            "DisbaledFromAllDictionaries"
        )]
        [ValidateNotNullOrEmpty()]
        [string] $Status
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/signatures/$DictionaryGroup/$DictionaryName/$SignatureName"

        $ApiBody = [ordered]@{
            "pattern"   = $Pattern;
            "protocols" = $Protocols;
        }

        if ($PSBoundParameters.ContainsKey('ApplyTo')) {
            $ApiBody += @{ "applyTo" = $ApplyTo }
        }
        if ($PSBoundParameters.ContainsKey('SearchIn')) {
            $ApiBody += @{ "searchIn" = $SearchIn }
        }
        if ($PSBoundParameters.ContainsKey('Status')) {
            $ApiBody += @{ "status" = $Status }
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
