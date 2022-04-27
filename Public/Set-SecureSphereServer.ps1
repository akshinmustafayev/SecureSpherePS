function Set-SecureSphereServer {
    # .ExternalHelp ..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline, ValueFromPipelineByPropertyName)]
        [ValidateNotNullOrEmpty()] 
        [string] $Server
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        # Check if we already have session, then prohibit to change Server address
        if (($script:SecureSphereHost -ne "") -and ($null -ne $script:SecureSphereSession)) {
            Write-Error "Please remove session first in order to set SecureSphere server again"
            break
        }

        # If url ends with / then remove that crap
        if ($Server.EndsWith("/")) {
            $Server = $Server.Substring(0, $Server.Length - 1)
        }
    }
    Process {
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] ParameterSetName: $($PsCmdlet.ParameterSetName)"
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] PSBoundParameters: $($PSBoundParameters | Out-String)"

        # Set the global variable
        $script:SecureSphereHost = $Server
    }
    End {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Complete"
    }
}
