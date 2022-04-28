function Edit-SecureSphereSystemDefinition {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateSet(
            "default-application-group", 
            "server-group-auto-creation", 
            "service-auto-creation"
        )] 
        [ValidateNotNullOrEmpty()] 
        [string] $ParamName,

        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()] 
        $Value
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        if ($ParamName -eq "default-application-group") {
            if ($Value.GetType().Name -eq "Boolean") {
                Write-Error "For the type 'default-application-group' you must set String value (text), not Boolean (true or false)"
                break
            }
        }
        else {
            if ($Value.GetType().Name -eq "String") {
                Write-Error "For the type '$ParamName' you must set Boolean (true or false), not String value (text)"
                break
            }
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/systemDefinitions/$ParamName"
        
        $ApiBody = [ordered]@{
            "value" = $Value;
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
