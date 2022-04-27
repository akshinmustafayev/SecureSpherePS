function Install-SecureSphere {
    # .ExternalHelp ..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        [string] $Login,
        
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()]
        [string] $Password,
        
        [Parameter(Mandatory = $true)] 
        $Configuration
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        $SecureSphereToken = Convert-ToBase64Token -Login $Login -Password $Password -ErrorAction Stop
        $Headers = @{ Authorization = "Basic $SecureSphereToken" }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/deploySecureSphere"
        
        $ApiBody = $Configuration
        $ApiBody = $ApiBody | ConvertTo-Json
    }
    Process {
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] ParameterSetName: $($PsCmdlet.ParameterSetName)"
        Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] PSBoundParameters: $($PSBoundParameters | Out-String)"

        try {
            $Result = Invoke-RestMethod -Method Post -Uri $ApiUrl -Body $ApiBody -ContentType "application/json" -Headers $Headers
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
