function Get-SecureSphereDocumentation {
    # .ExternalHelp ..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param ()

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"
    }
    Process {
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] ParameterSetName: $($PsCmdlet.ParameterSetName)"
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] PSBoundParameters: $($PSBoundParameters | Out-String)"

        Invoke-Item $SecureSphereDocumentationPath
    }
    End {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Complete"
    }
}
