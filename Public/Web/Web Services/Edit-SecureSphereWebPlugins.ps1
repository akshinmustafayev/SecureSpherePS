function Edit-SecureSphereWebPlugins {
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
        
        [Parameter(Position = 3, Mandatory = $true, ParameterSetName = 'ByWebServicePlugin')]
        $WebServicePlugin,

        [Parameter(Position = 3, Mandatory = $true, ParameterSetName = 'ByWebServicePlugins')]
        $WebServicePlugins
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/webServices/$SiteName/$ServerGroupName/$WebServiceName/plugins"
        
        $WebServicePluginsJson = ""
        if ($PSCmdlet.ParameterSetName -eq 'ByWebServicePlugin') {
            $WebServicePluginsJson = $WebServicePlugin.GetJson()
            Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] WebServicePluginsJson was for ByWebServicePlugin: $($WebServicePluginsJson)"
        }
        if ($PSCmdlet.ParameterSetName -eq 'ByWebServicePlugins') {
            $WebServicePluginsJson = $WebServicePlugins | ConvertTo-Json
            Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] WebServicePluginsJson was for ByWebServicePlugins: $($WebServicePluginsJson)"
        }

        $ApiBody = [ordered]@{ }
        $ApiBody += @{ "plugins" = $WebServicePluginsJson }

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
