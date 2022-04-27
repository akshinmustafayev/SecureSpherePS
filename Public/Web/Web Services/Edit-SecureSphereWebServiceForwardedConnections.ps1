function Edit-SecureSphereWebServiceForwardedConnections {
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
        
        [Parameter(Position = 3, Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [bool] $UseHttpForwardingHeader,

        [Parameter(Position = 4, Mandatory = $false, ParameterSetName = 'ByForwardedConnection')] 
        $ForwardedConnection,

        [Parameter(Position = 4, Mandatory = $false, ParameterSetName = 'ByForwardedConnections')] 
        $ForwardedConnections
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        if (($PSBoundParameters.ContainsKey('UseHttpForwardingHeader') -eq $false) -and
            ($PSBoundParameters.ContainsKey('ForwardedConnection') -eq $false) -and
            ($PSBoundParameters.ContainsKey('ForwardedConnections') -eq $false)) {
            Write-Error "At least one parameter to edit must be specified."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/webServices/$SiteName/$ServerGroupName/$WebServiceName/forwardedConnections"
        
        $ForwardedConnectionsJson = ""
        if ($PSCmdlet.ParameterSetName -eq 'ByWebProfileDirectory') {
            $ForwardedConnectionsJson = $ForwardedConnection.GetJson()
            Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] ForwardedConnectionsJson was for ByForwardedConnection: $($ForwardedConnectionsJson)"
        }
        if ($PSCmdlet.ParameterSetName -eq 'ByWebProfileDirectories') {
            $ForwardedConnectionsJson = $ForwardedConnections | ConvertTo-Json
            Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] ForwardedConnectionsJson was for ByForwardedConnections: $($ForwardedConnectionsJson)"
        }

        $ApiBody = [ordered]@{ }

        if ($PSBoundParameters.ContainsKey('UseHttpForwardingHeader')) {
            $ApiBody += @{ "useHttpForwardingHeader" = $UseHttpForwardingHeader }
        }
        if ($PSBoundParameters.ContainsKey('ForwardedConnection')) {
            $ApiBody += @{ "forwardedConnections" = $ForwardedConnectionsJson }
        }
        if ($PSBoundParameters.ContainsKey('ForwardedConnections')) {
            $ApiBody += @{ "forwardedConnections" = $ForwardedConnectionsJson }
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
