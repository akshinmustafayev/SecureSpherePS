function Set-SecureSphereWebProfileDirectories {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Position = 0, Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [string] $SiteName,
        
        [Parameter(Position = 1, Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $ServerGroupName,
          
        [Parameter(Position = 2, Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [string] $WebServiceName,
        
        [Parameter(Position = 3, Mandatory = $true)] 
        [ValidateNotNullOrEmpty()]
        [string] $WebApplicationName,

        [Parameter(Position = 4, Mandatory = $true, ParameterSetName = 'ByWebProfileDirectory')]
        $WebProfileDirectory,

        [Parameter(Position = 4, Mandatory = $true, ParameterSetName = 'ByWebProfileDirectories')]
        $WebProfileDirectories
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/webProfile/$SiteName/$ServerGroupName/$WebServiceName/$WebApplicationName/directories"
    
        $WebProfileDirectoriesJson = ""
        if ($PSCmdlet.ParameterSetName -eq 'ByWebProfileDirectory') {
            $WebProfileDirectoriesJson = $WebProfileDirectory.GetJson()
            Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] WebProfileDirectoriesJson was for ByWebProfileDirectory: $($WebProfileDirectoriesJson)"
        }
        if ($PSCmdlet.ParameterSetName -eq 'ByWebProfileDirectories') {
            $WebProfileDirectoriesJson = $WebProfileDirectories | ConvertTo-Json
            Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] WebProfileDirectoriesJson was for ByWebProfileDirectories: $($WebProfileDirectoriesJson)"
        }

        $ApiBody = $WebProfileDirectoriesJson
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
