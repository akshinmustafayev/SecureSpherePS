function Edit-SecureSphereDBService {
    # .ExternalHelp ..\..\..\..\..\SecureSpherePS-help.xml
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $SiteName, 
         
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $ServerGroupName,
          
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $DBServiceName,
         
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()] 
        [string] $NewName,
         
        [Parameter(Mandatory = $false)] 
        [ValidateRange(0, 65535)]
        [ValidateNotNullOrEmpty()]
        [UInt32[]] $Ports, 
         
        [Parameter(Mandatory = $false)]
        $TextReplacement, 
          
        [Parameter(Mandatory = $false)] 
        $DBMappings, 
        
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()] 
        [string] $DefaultApplication
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        if (($PSBoundParameters.ContainsKey('NewName') -eq $false) -and
            ($PSBoundParameters.ContainsKey('Ports') -eq $false) -and
            ($PSBoundParameters.ContainsKey('TextReplacement') -eq $false) -and
            ($PSBoundParameters.ContainsKey('DBMappings') -eq $false) -and
            ($PSBoundParameters.ContainsKey('DefaultApplication') -eq $false)) {
            Write-Error "At least one parameter to edit must be specified"
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/dbServices/$SiteName/$ServerGroupName/$DBServiceName"
        
        $ApiBody = [ordered]@{}
        if ($PSBoundParameters.ContainsKey('NewName')) {
            $ApiBody += @{ "name" = $NewName }
        }
        if ($PSBoundParameters.ContainsKey('Ports')) {
            $ApiBody += @{ "ports" = $Ports }
        }
        if ($PSBoundParameters.ContainsKey('TextReplacement')) {
            $ApiBody += @{ "text-replacement" = $TextReplacement }
        }
        if ($PSBoundParameters.ContainsKey('DBMappings')) {
            $ApiBody += @{ "db-mappings" = $DBMappings }
        }
        if ($PSBoundParameters.ContainsKey('DefaultApplication')) {
            $ApiBody += @{ "default-application" = $DefaultApplication }
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
