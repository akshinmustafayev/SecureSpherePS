function Import-SecureSphereWebSSLCertificate {
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
        [string] $WebServiceName,
        
        [Parameter(Mandatory = $true)] 
        [ValidateNotNullOrEmpty()]
        [string] $SslKeyName, 
         
        [Parameter(Mandatory = $true)]
        [ValidateSet(
            "pem", 
            "pkcs12"
        )]
        [ValidateNotNullOrEmpty()]
        [string] $Format,
          
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()] 
        [bool] $Hsm,
         
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()] 
        [string] $Private,
         
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()] 
        [string] $Certificate,
         
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()] 
        [string] $Pkcs12file,
        
        [Parameter(Mandatory = $false)] 
        [ValidateNotNullOrEmpty()] 
        [string] $Password 
    )

    Begin {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"

        if ($null -eq $SecureSphereSession) {
            Write-Error "Please login to SecureSphere first. Use Set-SecureSphereServer and New-SecureSphereSession cmdlets."
            break
        }

        if (($PSBoundParameters.ContainsKey('Private') -eq $false) -and ($Format -eq "pem")) {
            Write-Host "Please specify Private value, since Format value is 'pem'"
            break
        }

        if (($PSBoundParameters.ContainsKey('Certificate') -eq $false) -and ($Format -eq "pem")) {
            Write-Host "Please specify Certificate value, since Format value is 'pem'"
            break
        }
        
        if (($PSBoundParameters.ContainsKey('Pkcs12file') -eq $false) -and ($Format -eq "pkcs12")) {
            Write-Host "Please specify Pkcs12file value, since Format value is 'pkcs12'"
            break
        }

        if (($PSBoundParameters.ContainsKey('Password') -eq $false) -and ($Format -eq "pkcs12")) {
            Write-Host "Please specify Password value, since Format value is 'pkcs12'"
            break
        }

        $ApiUrl = "$SecureSphereHost/SecureSphere/api/v1/conf/webServices/$SiteName/$ServerGroupName/$WebServiceName/sslCertificates/$SslKeyName"

        $ApiBody = [ordered]@{ 
            "format" = $Format;
        }

        if ($PSBoundParameters.ContainsKey('Hsm')) {
            $ApiBody += @{ "hsm" = $Hsm }
        }
        if ($PSBoundParameters.ContainsKey('Private')) {
            $ApiBody += @{ "private" = $Private }
        }
        if ($PSBoundParameters.ContainsKey('Certificate')) {
            $ApiBody += @{ "certificate" = $Certificate }
        }
        if ($PSBoundParameters.ContainsKey('Pkcs12file')) {
            $ApiBody += @{ "pkcs12file" = $Pkcs12file }
        }
        if ($PSBoundParameters.ContainsKey('Password')) {
            $ApiBody += @{ "password" = $Password }
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
