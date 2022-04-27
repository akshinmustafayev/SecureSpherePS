function Set-SecureSphereAdminFirstTimePassword {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline, ValueFromPipelineByPropertyName)]
        [ValidateNotNullOrEmpty()] 
        [string] $Password
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/administration/user/password/firsttime"

        $SecureSphereToken = Convert-ToBase64Token -Login "admin" -Password $Password -ErrorAction Stop
        $Headers = @{ Authorization = "Basic $SecureSphereToken" }
    }
    Process {
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] ParameterSetName: $($PsCmdlet.ParameterSetName)"
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] PSBoundParameters: $($PSBoundParameters | Out-String)"

        try {
            $Result = Invoke-RestMethod -Method Post -Headers $Headers -Uri $ApiUrl -Body -ContentType "application/json"
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
