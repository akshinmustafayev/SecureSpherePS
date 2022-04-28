function Convert-ToBase64Token {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $Login,
          
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $Password
    )

    # According to the documentation Token must be in base64 format.
    $Base64Token = [System.Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes("$Login`:$Password"))
 
    return $Base64Token
}

function Write-DebugMessage {
    [CmdletBinding()]
    param(
        [Parameter(ValueFromPipeline)]
        [string] $Message
    )

    begin {
        $oldDebugPreference = $DebugPreference
        if (-not ($DebugPreference -eq "SilentlyContinue")) {
            $DebugPreference = 'Continue'
        }
    }
    process {
        Write-Debug $Message
    }
    end {
        $DebugPreference = $oldDebugPreference
    }
}
