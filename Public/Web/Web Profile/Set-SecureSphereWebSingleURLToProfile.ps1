﻿function Set-SecureSphereWebSingleURLToProfile {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter( Mandatory = $true)] 
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
        [string] $UrlPath,
        
        [Parameter(Mandatory = $true)] 
        $WebProfileUrl
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/webProfile/$SiteName/$ServerGroupName/$WebServiceName/$WebApplicationName/url/$UrlPath"
    
        $ApiBody = $WebProfileUrl.GetJson()
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
