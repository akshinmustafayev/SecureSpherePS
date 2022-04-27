function New-SecureSphereWebServiceHostToApplicationMapping {
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
        [UInt32] $Priority,
         
        [Parameter(Mandatory = $true)]
        [ValidateSet(
            "Prefix", 
            "Suffix",
            "Exact"
        )]
        [ValidateNotNullOrEmpty()] 
        [string] $HostMatchType,
         
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()] 
        [string] $HostName
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/webServices/$SiteName/$ServerGroupName/$WebServiceName/hostToAppMappings/$WebApplicationName/$Priority"
        
        $ApiBody = [ordered]@{ 
            "hostMatchType" = $HostMatchType;
            "Host"          = $HostName;
        }

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
