function New-SecureSphereSession {
    # .ExternalHelp ..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [string] $Login,
        
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [string] $Password
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"
        
        if (($null -eq $SecureSphereHost) -or ($SecureSphereHost -eq "")) {
            Write-Error "Please specify SecureSphere server first. Use Set-SecureSphereServer cmdlet first"
            break
        }

        if ($null -ne $SecureSphereSession) {
            Write-Error "Please end current session first in order to start a new one. Use Remove-SecureSphereSession cmdlet to remove current session."
            break
        }
    }
    Process {
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] ParameterSetName: $($PsCmdlet.ParameterSetName)"
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] PSBoundParameters: $($PSBoundParameters | Out-String)"

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/auth/session"

        # Convert login and password to Base64 token and set it in the headers
        $SecureSphereToken = Convert-ToBase64Token -Login $Login -Password $Password -ErrorAction Stop
        $Headers = @{ Authorization = "Basic $SecureSphereToken" }

        try {
            Invoke-RestMethod -Method Post -Headers $Headers -Uri $ApiUrl -ContentType "application/json" -SessionVariable SecureSphereSessionC | Out-Null
            $script:SecureSphereSession = $SecureSphereSessionC

            Write-Verbose "[$($MyInvocation.MyCommand.Name)] Now you can not use Set-SecureSphereServer cmdlet. In order to change server, you need to use Remove-SecureSphereSession cmdlet to remove current session first."
        }
        catch {
            Write-Error "$_"
        }
    }
    End {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Complete"
    }
}
