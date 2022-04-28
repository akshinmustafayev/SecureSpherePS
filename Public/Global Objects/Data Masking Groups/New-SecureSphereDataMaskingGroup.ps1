function New-SecureSphereDataMaskingGroup {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Position = 0, Mandatory = $true)]
        [ValidateNotNullOrEmpty()] 
        [string] $DataMaskingGroupName,
        
        [Parameter(Position = 1, Mandatory = $true, ParameterSetName = 'ByDataMaskingObject')]
        $DataMaskingObject,
        
        [Parameter(Position = 1, Mandatory = $true, ParameterSetName = 'ByDataMaskingObjects')]
        $DataMaskingObjects
    )
    
    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/globalObjects/dataMaskingGroups/$DataMaskingGroupName"

        $DataMaskingObjectsJson = ""
        if ($PSCmdlet.ParameterSetName -eq 'ByDataMaskingObject') {
            $DataMaskingObjectsJson = $DataMaskingObject.GetJson()
            Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] DataMaskingObjectsJson was for ByDataMaskingObject: $($DataMaskingObjectsJson)"
        }
        if ($PSCmdlet.ParameterSetName -eq 'ByDataMaskingObjects') {
            $DataMaskingObjectsJson = $DataMaskingObjects | ConvertTo-Json
            Write-DebugMessage "[$($MyInvocation.MyCommand.Name)] DataMaskingObjectsJson was for ByDataMaskingObjects: $($DataMaskingObjectsJson)"
        }

        $ApiBody = [ordered]@{}
        $ApiBody += @{ "dataMaskingObjects" = $DataMaskingObjectsJson }
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
