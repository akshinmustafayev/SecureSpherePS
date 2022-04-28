function Remove-SecureSphereSession {
    # .ExternalHelp ..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param ()

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"
        
        if ($null -eq $SecureSphereSession) {
            Write-Error "You can not end session which has not been created yet. Go and create a new session using New-SecureSphereSession cmdlet before removing one."
            break
        }
    }
    Process {
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] ParameterSetName: $($PsCmdlet.ParameterSetName)"
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] PSBoundParameters: $($PSBoundParameters | Out-String)"

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/auth/session"

        try {
            Invoke-RestMethod -Method Delete -Uri $ApiUrl -ContentType "application/json" -WebSession $SecureSphereSession
            $script:SecureSphereSession = $null
            
            Write-Verbose "[$($MyInvocation.MyCommand.Name)] Now you can use Set-SecureSphereServer cmdlet in order to change server, if needed."
        }
        catch {
            Write-Error "$_"
        }
    }
    End {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Complete"
    }
}
