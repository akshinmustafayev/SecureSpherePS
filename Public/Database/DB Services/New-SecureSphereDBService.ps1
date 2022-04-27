function New-SecureSphereDBService {
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
        [string] $DBServiceName,
        
        [Parameter(Mandatory = $true)] 
        [ValidateSet(
            "Oracle", 
            "MsSql", 
            "Sybase",
            "Db2", 
            "Informix", 
            "Teradata", 
            "SybaseIQ", 
            "MySql", 
            "Netezza",
            "Progress",
            "Cache"
        )]
        [ValidateNotNullOrEmpty()] 
        [string] $DBServiceType,
         
        [Parameter(Mandatory = $false)]
        [ValidateRange(0, 65535)]
        [ValidateNotNullOrEmpty()]
        [UInt32[]] $Ports
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/dbServices/$SiteName/$ServerGroupName/$DBServiceName"
        
        $ApiBody = [ordered]@{}
        $ApiBody += @{ "db-service-type" = $DBServiceType }
        
        if ($PSBoundParameters.ContainsKey('Ports')) {
            $ApiBody += @{ "ports" = $Ports }
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
