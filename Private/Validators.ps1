# This is Regex Validator to check string if it is in valid IPV4 format
# Validator must end with "Attribute" word to be recognized as validator. 
#
# Usage Example:
#       [ValidateIPAddress()] [String] $IPAddress
# 
class ValidateIPAddressAttribute : System.Management.Automation.ValidateArgumentsAttribute {
    [void] Validate([object]$arguments, [System.Management.Automation.EngineIntrinsics]$engineIntrinsics) {
        $value = $arguments
        if ($value -notmatch "^(?:[0-9]{1,3}\.){3}[0-9]{1,3}$") {
            Throw [System.ArgumentNullException]::new("The specified value is not an IP address")
        }
    }
}
