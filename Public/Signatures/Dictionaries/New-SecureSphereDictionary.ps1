function New-SecureSphereDictionary {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()]
        [string] $DictionaryName,
        
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()]
        [string] $Category,
        
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()]
        [string] $Description,
         
        [Parameter(Mandatory = $false)] 
        [ValidateSet(
            "Stream",
            "Web", 
            "SQL"
        )]
        [ValidateNotNullOrEmpty()] 
        [string] $Type
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/dictionaries/$DictionaryName"

        $ApiBody = [ordered]@{
            "category" = $Category;
        }

        if ($PSBoundParameters.ContainsKey('Description')) {
            $ApiBody += @{ "description" = $Description }
        }
        if ($PSBoundParameters.ContainsKey('Type')) {
            $ApiBody += @{ "type" = $Type }
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
