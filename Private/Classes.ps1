class DataMaskingObject {
    [ValidateNotNullOrEmpty()] [string] $Name
    [ValidateNotNullOrEmpty()] [string] $Match
    [ValidateNotNullOrEmpty()] [string] $Description
    [ValidateNotNullOrEmpty()] [bool] $SearchInHttpParameters
    [ValidateNotNullOrEmpty()] [bool] $SearchInHttpHeaders
    [ValidateNotNullOrEmpty()] [bool] $SearchInHttpCookies
    [ValidateNotNullOrEmpty()] [bool] $Enabled

    DataMaskingObject() { }

    DataMaskingObject([string] $Name_, 
        [string] $Match_, 
        [string] $Description_, 
        [bool] $SearchInHttpParameters_ = $false, 
        [bool] $SearchInHttpHeaders_ = $false,
        [bool] $SearchInHttpCookies_ = $false, 
        [bool] $Enabled_ = $false) {
        $this.Name = $Name_
        $this.Match = $Match_
        $this.Description = $Description_
        $this.SearchInHttpParameters = $SearchInHttpParameters_
        $this.SearchInHttpHeaders = $SearchInHttpHeaders_
        $this.SearchInHttpCookies = $SearchInHttpCookies_
        $this.Enabled = $Enabled_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Name) -and ($this.Name -ne "")) {
            $JsonData += @{ "name" = $this.Name }
        }
        if (($null -ne $this.Match) -and ($this.Match -ne "")) {
            $JsonData += @{ "match" = $this.Match }
        }
        if (($null -ne $this.Description) -and ($this.Description -ne "")) {
            $JsonData += @{ "description" = $this.Description }
        }
        if (($null -ne $this.SearchInHttpParameters) -and ($this.SearchInHttpParameters -ne "")) {
            $JsonData += @{ "searchInHttpParameters" = $this.SearchInHttpParameters }
        }
        if (($null -ne $this.SearchInHttpHeaders) -and ($this.SearchInHttpHeaders -ne "")) {
            $JsonData += @{ "searchInHttpHeaders" = $this.SearchInHttpHeaders }
        }
        if (($null -ne $this.SearchInHttpCookies) -and ($this.SearchInHttpCookies -ne "")) {
            $JsonData += @{ "searchInHttpCookies" = $this.SearchInHttpCookies }
        }
        if (($null -ne $this.Enabled) -and ($this.Enabled -ne "")) {
            $JsonData += @{ "enabled" = $this.Enabled }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class IPEntry {
    [ValidateNotNullOrEmpty()] [ValidateSet("single", "range", "network")] [string] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("add", "remove")] [string] $Operation
    [ValidateNotNullOrEmpty()] [string] $IpAddressFrom
    [ValidateNotNullOrEmpty()] [string] $IpAddressTo
    [ValidateNotNullOrEmpty()] [string] $NetworkAddress
    [ValidateNotNullOrEmpty()] [ValidateRange(0, 32)] [UInt32] $CidrMask

    IPEntry() { }

    IPEntry([string] $Type_, 
        [string] $Operation_,  
        [string] $IpAddressFrom_, 
        [string] $IpAddressTo_,
        [string] $NetworkAddress_,
        [UInt32] $CidrMask_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.IpAddressFrom = $IpAddressFrom_
        $this.IpAddressTo = $IpAddressTo_
        $this.NetworkAddress = $NetworkAddress_
        $this.CidrMask = $CidrMask_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.IpAddressFrom) -and ($this.IpAddressFrom -ne "")) {
            $JsonData += @{ "ipAddressFrom" = $this.IpAddressFrom }
        }
        if (($null -ne $this.IpAddressTo) -and ($this.IpAddressTo -ne "")) {
            $JsonData += @{ "ipAddressTo" = $this.IpAddressTo }
        }
        if (($null -ne $this.NetworkAddress) -and ($this.NetworkAddress -ne "")) {
            $JsonData += @{ "networkAddress" = $this.NetworkAddress }
        }
        if (($null -ne $this.CidrMask) -and ($this.CidrMask -ne "")) {
            $JsonData += @{ "cidrMask" = $this.CidrMask }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class URLRewriteRule {
    [ValidateNotNullOrEmpty()] [string] $Name
    [ValidateNotNullOrEmpty()] [UInt32] $Priority
    [ValidateNotNullOrEmpty()] [string] $HostToFind
    [ValidateNotNullOrEmpty()] [string] $HostToReplace
    [ValidateNotNullOrEmpty()] [string] $PathToFind
    [ValidateNotNullOrEmpty()] [string] $PathToReplace
    [ValidateNotNullOrEmpty()] $MatchCriteria
    [ValidateNotNullOrEmpty()] [ValidateSet("Request", "Response")] [string] $ApplyTo
    [ValidateNotNullOrEmpty()] [ValidateSet("Original", "HTTP", "HTTPS", "NoRedirect")] [string] $Redirect
    [ValidateNotNullOrEmpty()] [bool] $Enabled

    URLRewriteRule() { }

    URLRewriteRule([string] $Name_, 
        [UInt32] $Priority_,  
        [string] $HostToFind_, 
        [string] $HostToReplace_,
        [string] $PathToFind_,
        [string] $PathToReplace_,
        $MatchCriteria_,
        [string] $ApplyTo_,
        [string] $Redirect_,
        [bool] $Enabled_) {
        $this.Name = $Name_
        $this.Priority = $Priority_
        $this.HostToFind = $HostToFind_
        $this.HostToReplace = $HostToReplace_
        $this.PathToFind = $PathToFind_
        $this.PathToReplace = $PathToReplace_
        $this.MatchCriteria = $MatchCriteria_
        $this.ApplyTo = $ApplyTo_
        $this.Redirect = $Redirect_
        $this.Enabled = $Enabled_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Name) -and ($this.Name -ne "")) {
            $JsonData += @{ "name" = $this.Name }
        }
        if (($null -ne $this.Priority) -and ($this.Priority -ne "")) {
            $JsonData += @{ "priority" = $this.Priority }
        }
        if (($null -ne $this.HostToFind) -and ($this.HostToFind -ne "")) {
            $JsonData += @{ "hostToFind" = $this.HostToFind }
        }
        if (($null -ne $this.HostToReplace) -and ($this.HostToReplace -ne "")) {
            $JsonData += @{ "hostToReplace" = $this.HostToReplace }
        }
        if (($null -ne $this.PathToFind) -and ($this.PathToFind -ne "")) {
            $JsonData += @{ "pathToFind" = $this.PathToFind }
        }
        if (($null -ne $this.PathToReplace) -and ($this.PathToReplace -ne "")) {
            $JsonData += @{ "pathToReplace" = $this.PathToReplace }
        }
        if (($null -ne $this.MatchCriteria) -and ($this.MatchCriteria -ne "")) {
            $JsonData += @{ "matchCriteria" = $this.MatchCriteria }
        }
        if (($null -ne $this.ApplyTo) -and ($this.ApplyTo -ne "")) {
            $JsonData += @{ "applyTo" = $this.ApplyTo }
        }
        if (($null -ne $this.Redirect) -and ($this.Redirect -ne "")) {
            $JsonData += @{ "redirect" = $this.Redirect }
        }
        if (($null -ne $this.Enabled) -and ($this.Enabled -ne "")) {
            $JsonData += @{ "enabled" = $this.Enabled }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebErrorPagePolicyRule {
    [ValidateNotNullOrEmpty()] [string] $Name
    [ValidateNotNullOrEmpty()] [UInt32] $Priority
    [ValidateNotNullOrEmpty()] [string] $ErrorPageName
    [ValidateNotNullOrEmpty()] $MatchCriteria
    [ValidateNotNullOrEmpty()] [bool] $Enabled

    WebErrorPagePolicyRule() { }

    WebErrorPagePolicyRule([string] $Name_, 
        [UInt32] $Priority_,  
        [string] $ErrorPageName_, 
        $MatchCriteria_,
        [bool] $Enabled_) {
        $this.Name = $Name_
        $this.Priority = $Priority_
        $this.HostToFind = $ErrorPageName_
        $this.MatchCriteria = $MatchCriteria_
        $this.Enabled = $Enabled_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Name) -and ($this.Name -ne "")) {
            $JsonData += @{ "name" = $this.Name }
        }
        if (($null -ne $this.Priority) -and ($this.Priority -ne "")) {
            $JsonData += @{ "priority" = $this.Priority }
        }
        if (($null -ne $this.ErrorPageName) -and ($this.ErrorPageName -ne "")) {
            $JsonData += @{ "errorPageName" = $this.ErrorPageName }
        }
        if (($null -ne $this.MatchCriteria) -and ($this.MatchCriteria -ne "")) {
            $JsonData += @{ "matchCriteria" = $this.MatchCriteria }
        }
        if (($null -ne $this.Enabled) -and ($this.Enabled -ne "")) {
            $JsonData += @{ "enabled" = $this.Enabled }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class BlockedSource {
    [ValidateNotNullOrEmpty()] [string] $BlockedBy
    [ValidateNotNullOrEmpty()] [string] $IpAddress
    [ValidateNotNullOrEmpty()] [string] $User
    [ValidateNotNullOrEmpty()] [string] $SessionId
    [ValidateNotNullOrEmpty()] [string] $BlockingTime
    [ValidateNotNullOrEmpty()] [string] $EventCount
    [ValidateNotNullOrEmpty()] [string] $LastEventTime
    [ValidateNotNullOrEmpty()] [string] $AutomaticReleaseTime
    [ValidateNotNullOrEmpty()] [UInt32] $AlertNumber
    [ValidateNotNullOrEmpty()] [string] $Policy
    [ValidateNotNullOrEmpty()] [string] $ServerGroup

    BlockedSource() { }

    BlockedSource([string] $BlockedBy_, 
        [string] $IpAddress_, 
        [string] $User_, 
        [string] $SessionId_, 
        [string] $BlockingTime_, 
        [string] $EventCount_, 
        [string] $LastEventTime_, 
        [string] $AutomaticReleaseTime_, 
        [UInt32] $AlertNumber_, 
        [string] $Policy_, 
        [string] $ServerGroup_) {
        $this.BlockedBy = $BlockedBy_
        $this.IpAddress = $IpAddress_
        $this.User = $User_
        $this.SessionId = $SessionId_
        $this.BlockingTime = $BlockingTime_
        $this.EventCount = $EventCount_
        $this.LastEventTime = $LastEventTime_
        $this.AutomaticReleaseTime = $AutomaticReleaseTime_
        $this.AlertNumber = $AlertNumber_
        $this.Policy = $Policy_
        $this.ServerGroup = $ServerGroup_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.BlockedBy) -and ($this.BlockedBy -ne "")) {
            $JsonData += @{ "blockedBy" = $this.BlockedBy }
        }
        if (($null -ne $this.IpAddress) -and ($this.IpAddress -ne "")) {
            $JsonData += @{ "ipAddress" = $this.IpAddress }
        }
        if (($null -ne $this.User) -and ($this.User -ne "")) {
            $JsonData += @{ "user" = $this.User }
        }
        if (($null -ne $this.SessionId) -and ($this.SessionId -ne "")) {
            $JsonData += @{ "sessionId" = $this.SessionId }
        }
        if (($null -ne $this.BlockingTime) -and ($this.BlockingTime -ne "")) {
            $JsonData += @{ "blockingTime" = $this.BlockingTime }
        }
        if (($null -ne $this.EventCount) -and ($this.EventCount -ne "")) {
            $JsonData += @{ "eventCount" = $this.EventCount }
        }
        if (($null -ne $this.LastEventTime) -and ($this.LastEventTime -ne "")) {
            $JsonData += @{ "lastEventTime" = $this.LastEventTime }
        }
        if (($null -ne $this.AutomaticReleaseTime) -and ($this.AutomaticReleaseTime -ne "")) {
            $JsonData += @{ "automaticReleaseTime" = $this.AutomaticReleaseTime }
        }
        if (($null -ne $this.AlertNumber) -and ($this.AlertNumber -ne "")) {
            $JsonData += @{ "alertNumber" = $this.AlertNumber }
        }
        if (($null -ne $this.Policy) -and ($this.Policy -ne "")) {
            $JsonData += @{ "policy" = $this.Policy }
        }
        if (($null -ne $this.ServerGroup) -and ($this.ServerGroup -ne "")) {
            $JsonData += @{ "serverGroup" = $this.ServerGroup }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}


class KRPOutboundRule {
    [ValidateNotNullOrEmpty()] [string] $ExternalHost
    [ValidateNotNullOrEmpty()] [string] $UrlPrefix
    [ValidateNotNullOrEmpty()] [string] $InternalIpHost
    [ValidateNotNullOrEmpty()] [UInt32] $ServerPort
    [ValidateNotNullOrEmpty()] [bool] $Encrypt
    [ValidateNotNullOrEmpty()] [string] $ClientAuthenticationRules
    [ValidateNotNullOrEmpty()] [bool] $ValidateServerCertificate
    [ValidateNotNullOrEmpty()] [string] $ClientCertificate
    [ValidateNotNullOrEmpty()] [string] $ServerSideSslSettings

    KRPOutboundRule() { }

    KRPOutboundRule([string] $ExternalHost_,
        [string] $UrlPrefix_,
        [string] $InternalIpHost_,
        [UInt32] $ServerPort_,
        [bool] $Encrypt_,
        [string] $ClientAuthenticationRules_,
        [bool] $ValidateServerCertificate_,
        [string] $ClientCertificate_,
        [string] $ServerSideSslSettings_) {
        $this.ExternalHost = $ExternalHost_
        $this.UrlPrefix = $UrlPrefix_
        $this.InternalIpHost = $InternalIpHost_
        $this.ServerPort = $ServerPort_
        $this.Encrypt = $Encrypt_
        $this.ClientAuthenticationRules = $ClientAuthenticationRules_
        $this.ValidateServerCertificate = $ValidateServerCertificate_
        $this.ClientCertificate = $ClientCertificate_
        $this.ServerSideSslSettings = $ServerSideSslSettings_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.ExternalHost) -and ($this.ExternalHost -ne "")) {
            $JsonData += @{ "externalHost" = $this.ExternalHost }
        }
        if (($null -ne $this.UrlPrefix) -and ($this.UrlPrefix -ne "")) {
            $JsonData += @{ "urlPrefix" = $this.UrlPrefix }
        }
        if (($null -ne $this.InternalIpHost) -and ($this.InternalIpHost -ne "")) {
            $JsonData += @{ "internalIpHost" = $this.InternalIpHost }
        }
        if (($null -ne $this.ServerPort) -and ($this.ServerPort -ne "")) {
            $JsonData += @{ "serverPort" = $this.ServerPort }
        }
        if (($null -ne $this.Encrypt) -and ($this.Encrypt -ne "")) {
            $JsonData += @{ "encrypt" = $this.Encrypt }
        }
        if (($null -ne $this.ClientAuthenticationRules) -and ($this.ClientAuthenticationRules -ne "")) {
            $JsonData += @{ "clientAuthenticationRules" = $this.ClientAuthenticationRules }
        }
        if (($null -ne $this.ValidateServerCertificate) -and ($this.ValidateServerCertificate -ne "")) {
            $JsonData += @{ "validateServerCertificate" = $this.ValidateServerCertificate }
        }
        if (($null -ne $this.ClientCertificate) -and ($this.ClientCertificate -ne "")) {
            $JsonData += @{ "clientCertificate" = $this.ClientCertificate }
        }
        if (($null -ne $this.ServerSideSslSettings) -and ($this.ServerSideSslSettings -ne "")) {
            $JsonData += @{ "serverSideSslSettings" = $this.ServerSideSslSettings }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebProfilePatternUrl {
    [ValidateNotNullOrEmpty()] [string] $Pattern
    [ValidateNotNullOrEmpty()] [ValidateSet("Prefix", "Suffix")] [string] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("InLearning", "InProtection")] [string] $Status
    [ValidateNotNullOrEmpty()] [ValidateSet("URL", "XML", "JSON")] [string] $ContentTypes
    $AllowedMethods
    $Parameters

    WebProfilePatternUrl() { }

    WebProfilePatternUrl([string] $Pattern_, 
        [string] $Type_, 
        [string] $Status_ = "InProtection", 
        [string] $ContentTypes_ = "URL", 
        $AllowedMethods_, 
        $Parameters_) {
        $this.Pattern = $Pattern_
        $this.Type = $Type_
        $this.Status = $Status_
        $this.ContentTypes = $ContentTypes_
        $this.AllowedMethods = $AllowedMethods_
        $this.Parameters = $Parameters_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Pattern) -and ($this.Pattern -ne "")) {
            $JsonData += @{ "pattern" = $this.Name }
        }
        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Status) -and ($this.Status -ne "")) {
            $JsonData += @{ "status" = $this.Status }
        }
        if (($null -ne $this.ContentTypes) -and ($this.ContentTypes -ne "")) {
            $JsonData += @{ "contentTypes" = $this.ContentTypes }
        }
        if (($null -ne $this.AllowedMethods) -and ($this.AllowedMethods -ne "")) {
            $JsonData += @{ "allowedMethods" = $this.AllowedMethods }
        }
        if (($null -ne $this.Parameters) -and ($this.Parameters -ne "")) {
            $JsonData += @{ "parameters" = $this.Parameters }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebProfileCookie {
    [ValidateNotNullOrEmpty()] [string] $Name
    [ValidateNotNullOrEmpty()] [bool] $Injection
    [ValidateNotNullOrEmpty()] [bool] $Prefix
    [ValidateNotNullOrEmpty()] [ValidateSet("Learn", "Protect", "Ignore")] [string] $Status

    WebProfileCookie() { }

    WebProfileCookie([string] $Name_, 
        [bool] $Injection_, 
        [bool] $Prefix_, 
        [string] $Status_ = "Protect") {
        $this.Name = $Name_
        $this.Injection = $Injection_
        $this.Prefix = $Prefix_
        $this.Status = $Status_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Name) -and ($this.Name -ne "")) {
            $JsonData += @{ "name" = $this.Name }
        }
        if (($null -ne $this.Injection) -and ($this.Injection -ne "")) {
            $JsonData += @{ "injection" = $this.Injection }
        }
        if (($null -ne $this.Prefix) -and ($this.Prefix -ne "")) {
            $JsonData += @{ "prefix" = $this.Prefix }
        }
        if (($null -ne $this.Status) -and ($this.Status -ne "")) {
            $JsonData += @{ "status" = $this.Status }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebProfileLoginActionUrl {
    [ValidateNotNullOrEmpty()] [string] $Url
    [ValidateNotNullOrEmpty()] [ValidateSet("InLearning", "InProtection", "Manual")] [string] $Status
    [string] $UserField1
    [string] $UserField2
    [ValidateNotNullOrEmpty()] [ValidateSet("Succeeded", "Failed", "CantTell")] [string] $DefaultDecision
    $DecisionRules

    WebProfileLoginActionUrl() { }

    WebProfileLoginActionUrl([string] $Url_,
        [string] $Status_ ,
        [string] $UserField1_, 
        [string] $UserField2_, 
        [string] $DefaultDecision_, 
        $DecisionRules_) {
        $this.Url = $Url_
        $this.Status = $Status_
        $this.UserField1 = $UserField1_
        $this.UserField2 = $UserField2_
        $this.DefaultDecision = $DefaultDecision_
        $this.DecisionRules = $DecisionRules_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Url) -and ($this.Url -ne "")) {
            $JsonData += @{ "url" = $this.Url }
        }
        if (($null -ne $this.Status) -and ($this.Status -ne "")) {
            $JsonData += @{ "status" = $this.Status }
        }
        if (($null -ne $this.UserField1) -and ($this.UserField1 -ne "")) {
            $JsonData += @{ "userField1" = $this.UserField1 }
        }
        if (($null -ne $this.UserField2) -and ($this.UserField2 -ne "")) {
            $JsonData += @{ "userField2" = $this.UserField2 }
        }
        if (($null -ne $this.DefaultDecision) -and ($this.DefaultDecision -ne "")) {
            $JsonData += @{ "defaultDecision" = $this.DefaultDecision }
        }
        if (($null -ne $this.DecisionRules) -and ($this.DecisionRules -ne "")) {
            $JsonData += @{ "decisionRules" = $this.DecisionRules }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebProfileSusceptibleDir {
    [ValidateNotNullOrEmpty()] [string] $Name
    [ValidateNotNullOrEmpty()] [ValidateSet("InLearning", "InProtection")] [string] $Status

    WebProfileSusceptibleDir() { }

    WebProfileSusceptibleDir([string] $Name_, 
        [string] $Status_) {
        $this.Name = $Name_
        $this.Status = $Status_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Name) -and ($this.Name -ne "")) {
            $JsonData += @{ "name" = $this.Name }
        }
        if (($null -ne $this.Status) -and ($this.Status -ne "")) {
            $JsonData += @{ "status" = $this.Status }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebProfileUrl {
    [ValidateNotNullOrEmpty()] [string] $UrlFullPath
    [ValidateNotNullOrEmpty()] [ValidateSet("InLearning", "InProtection")] [string] $Status
    [ValidateNotNullOrEmpty()] [ValidateSet("URL", "XML", "JSON")] [string] $ContentTypes
    [ValidateNotNullOrEmpty()] [bool] $Locked
    $AllowedMethods
    $Parameters

    WebProfileUrl() { }

    WebProfileUrl([string] $UrlFullPath_, 
        [string] $Status_, 
        [string] $ContentTypes_,
        [bool] $Locked_,
        $AllowedMethods_,
        $Parameters_) {
        $this.UrlFullPath = $UrlFullPath_
        $this.Status = $Status_
        $this.ContentTypes = $ContentTypes_
        $this.Locked = $Locked_
        $this.AllowedMethods = $AllowedMethods_
        $this.Parameters = $Parameters_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Name) -and ($this.Name -ne "")) {
            $JsonData += @{ "name" = $this.Name }
        }
        if (($null -ne $this.Status) -and ($this.Status -ne "")) {
            $JsonData += @{ "status" = $this.Status }
        }
        if (($null -ne $this.ContentTypes) -and ($this.ContentTypes -ne "")) {
            $JsonData += @{ "contentTypes" = $this.ContentTypes }
        }
        if (($null -ne $this.Locked) -and ($this.Locked -ne "")) {
            $JsonData += @{ "locked" = $this.Locked }
        }
        if (($null -ne $this.AllowedMethods) -and ($this.AllowedMethods -ne "")) {
            $JsonData += @{ "allowedMethods" = $this.AllowedMethods }
        }
        if (($null -ne $this.Parameters) -and ($this.Parameters -ne "")) {
            $JsonData += @{ "parameters" = $this.Parameters }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebProfileHeader {
    [ValidateNotNullOrEmpty()] [string] $HeaderName
    [ValidateNotNullOrEmpty()] [bool] $Base64Encoded

    WebProfileHeader() { }

    WebProfileHeader([string] $HeaderName_, 
        [bool] $Base64Encoded_ = $false) {
        $this.HeaderName = $HeaderName_
        $this.Base64Encoded = $Base64Encoded_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.HeaderName) -and ($this.HeaderName -ne "")) {
            $JsonData += @{ "headerName" = $this.HeaderName }
        }
        if (($null -ne $this.Base64Encoded) -and ($this.Base64Encoded -ne "")) {
            $JsonData += @{ "base64Encoded" = $this.Base64Encoded }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebProfileAllowedMethod {
    [ValidateNotNullOrEmpty()] [ValidateSet("observed", "decided")] [string] $Status
    [ValidateNotNullOrEmpty()] [string] $Method

    WebProfileAllowedMethod() { }

    WebProfileAllowedMethod([string] $Status_, 
        [string] $Method_) {
        $this.Status = $Status_
        $this.Method = $Method_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Status) -and ($this.Status -ne "")) {
            $JsonData += @{ "status" = $this.Status }
        }
        if (($null -ne $this.Method) -and ($this.Method -ne "")) {
            $JsonData += @{ "method" = $this.Method }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebProfileParameter {
    [ValidateNotNullOrEmpty()] [string] $Name
    [ValidateNotNullOrEmpty()] [UInt32] $MinLength
    [ValidateNotNullOrEmpty()] [UInt32] $MaxLength
    [ValidateNotNullOrEmpty()] [ValidateSet("Numeric", "Latin", "UTF8")] [string] $Type
    [ValidateNotNullOrEmpty()] [bool] $Required
    [ValidateNotNullOrEmpty()] [bool] $ReadOnly
    [ValidateNotNullOrEmpty()] [bool] $Prefix
    [ValidateNotNullOrEmpty()] [bool] $Nullable
    [ValidateNotNullOrEmpty()] [string] $AdditionalAllowedChars
    [ValidateNotNullOrEmpty()] [string] $CustomValueType

    WebProfileParameter() { }

    WebProfileParameter([string] $Name_, 
        [UInt32] $MinLength_, 
        [UInt32] $MaxLength_, 
        [string] $Type_, 
        [bool] $Required_, 
        [bool] $ReadOnly_, 
        [bool] $Prefix_, 
        [bool] $Nullable_, 
        [string] $AdditionalAllowedChars_, 
        [string] $CustomValueType_) {
        $this.Name = $Name_
        $this.MinLength = $MinLength_
        $this.MaxLength = $MaxLength_
        $this.Type = $Type_
        $this.Required = $Required_
        $this.ReadOnly = $ReadOnly_
        $this.Prefix = $Prefix_
        $this.Nullable = $Nullable_
        $this.AdditionalAllowedChars = $AdditionalAllowedChars_
        $this.CustomValueType = $CustomValueType_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Name) -and ($this.Name -ne "")) {
            $JsonData += @{ "name" = $this.Name }
        }
        if (($null -ne $this.MinLength) -and ($this.MinLength -ne "")) {
            $JsonData += @{ "minLength" = $this.MinLength }
        }
        if (($null -ne $this.MaxLength) -and ($this.MaxLength -ne "")) {
            $JsonData += @{ "maxLength" = $this.MaxLength }
        }
        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Required) -and ($this.Required -ne "")) {
            $JsonData += @{ "required" = $this.Required }
        }
        if (($null -ne $this.ReadOnly) -and ($this.ReadOnly -ne "")) {
            $JsonData += @{ "readOnly" = $this.ReadOnly }
        }
        if (($null -ne $this.Prefix) -and ($this.Prefix -ne "")) {
            $JsonData += @{ "prefix" = $this.Prefix }
        }
        if (($null -ne $this.Nullable) -and ($this.Nullable -ne "")) {
            $JsonData += @{ "nullable" = $this.Nullable }
        }
        if (($null -ne $this.AdditionalAllowedChars) -and ($this.AdditionalAllowedChars -ne "")) {
            $JsonData += @{ "additionalAllowedChars" = $this.AdditionalAllowedChars }
        }
        if (($null -ne $this.CustomValueType) -and ($this.CustomValueType -ne "")) {
            $JsonData += @{ "customValueType" = $this.CustomValueType }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebProfileLoginDecisionRule {
    [ValidateNotNullOrEmpty()] [string] $Value
    [ValidateNotNullOrEmpty()] [ValidateSet("Redirect", "ResponseCode", "Pattern")] [string] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("Succeeded", "Failed", "CantTell")] [string] $Result

    WebProfileLoginDecisionRule() { }

    WebProfileLoginDecisionRule([string] $Value_, 
        [string] $Type_, 
        [string] $Result_) {
        $this.Value = $Value_
        $this.Type = $Type_
        $this.Result = $Result_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Value) -and ($this.Value -ne "")) {
            $JsonData += @{ "value" = $this.Value }
        }
        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Result) -and ($this.Result -ne "")) {
            $JsonData += @{ "result" = $this.Result }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebProfileDirectory {
    [ValidateNotNullOrEmpty()] [string] $FullPath
    [ValidateNotNullOrEmpty()] [bool] $Locked

    WebProfileHeader() { }

    WebProfileHeader([string] $FullPath_, 
        [bool] $Locked_ = $false) {
        $this.FullPath = $FullPath_
        $this.Locked = $Locked_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.FullPath) -and ($this.FullPath -ne "")) {
            $JsonData += @{ "fullPath" = $this.FullPath }
        }
        if (($null -ne $this.Locked) -and ($this.Locked -ne "")) {
            $JsonData += @{ "locked" = $this.Locked }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebServiceForwardedConnection {
    [ValidateNotNullOrEmpty()] [ValidateSet("Add", "Remove")] [string] $Operation
    [ValidateNotNullOrEmpty()] [string] $HeaderName
    [ValidateNotNullOrEmpty()] [string] $ProxyIpGroup

    WebServiceForwardedConnection() { }

    WebServiceForwardedConnection([string] $Operation_,
        [string] $HeaderName_,
        [string] $ProxyIpGroup_ = $false) {
        $this.Operation = $Operation_
        $this.HeaderName = $HeaderName_
        $this.ProxyIpGroup = $ProxyIpGroup_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.HeaderName) -and ($this.HeaderName -ne "")) {
            $JsonData += @{ "headerName" = $this.HeaderName }
        }
        if (($null -ne $this.ProxyIpGroup) -and ($this.ProxyIpGroup -ne "")) {
            $JsonData += @{ "proxyIpGroup" = $this.ProxyIpGroup }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebServicePlugin {
    [ValidateNotNullOrEmpty()] [ValidateSet("URL to Parameter", "Parameter to URL", "Parameter Modification", "Special Parameter Delimiter", "Parameter Coupling", "Custom Plugin")] [string] $PluginType
    [ValidateNotNullOrEmpty()] [UInt32] $PluginOrder
    [ValidateNotNullOrEmpty()] [string] $PathRegexp
    [ValidateNotNullOrEmpty()] [string] $PathReplace
    [ValidateNotNullOrEmpty()] [string] $ParamValue
    [ValidateNotNullOrEmpty()] [string] $ParamName
    [ValidateNotNullOrEmpty()] [string] $PathPrefix
    [ValidateNotNullOrEmpty()] [string] $PrefixParam
    [ValidateNotNullOrEmpty()] [string] $SuffixParam
    [ValidateNotNullOrEmpty()] [string] $DirParam
    [ValidateNotNullOrEmpty()] [string] $SuffixDelimiter
    [ValidateNotNullOrEmpty()] [string] $ParameterRegex
    [ValidateNotNullOrEmpty()] [string] $ParameterRewrite
    [ValidateNotNullOrEmpty()] [string] $NameRegex
    [ValidateNotNullOrEmpty()] [string] $ValueRegex
    [ValidateNotNullOrEmpty()] [string] $Separator
    [ValidateNotNullOrEmpty()] [ValidateSet("hpl_u2p", "hpl_p2u", "hpl_p2p", "hpl_web_separator", "hpl_param_coupling")] [string] $Name
    [ValidateNotNullOrEmpty()] [string] $Config

    WebServicePlugin() { }

    WebServicePlugin([string] $PluginType_, 
        [UInt32] $PluginOrder_, 
        [string] $PathRegexp_, 
        [string] $PathReplace_, 
        [string] $ParamValue_, 
        [string] $ParamName_, 
        [string] $PathPrefix_, 
        [string] $PrefixParam_, 
        [string] $SuffixParam_, 
        [string] $DirParam_, 
        [string] $SuffixDelimiter_, 
        [string] $ParameterRegex_, 
        [string] $ParameterRewrite_, 
        [string] $NameRegex_, 
        [string] $ValueRegex_, 
        [string] $Separator_, 
        [string] $Name_, 
        [string] $Config_) {
        $this.PluginType = $PluginType_
        $this.PluginOrder = $PluginOrder_
        $this.PathRegexp = $PathRegexp_
        $this.PathReplace = $PathReplace_
        $this.ParamValue = $ParamValue_
        $this.ParamName = $ParamName_
        $this.PathPrefix = $PathPrefix_
        $this.PrefixParam = $PrefixParam_
        $this.SuffixParam = $SuffixParam_
        $this.DirParam = $DirParam_
        $this.SuffixDelimiter = $SuffixDelimiter_
        $this.ParameterRegex = $ParameterRegex_
        $this.ParameterRewrite = $ParameterRewrite_
        $this.NameRegex = $NameRegex_
        $this.ValueRegex = $ValueRegex_
        $this.Separator = $Separator_
        $this.Name = $Name_
        $this.Config = $Config_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.PluginType) -and ($this.PluginType -ne "")) {
            $JsonData += @{ "pluginType" = $this.PluginType }
        }
        if (($null -ne $this.PluginOrder) -and ($this.PluginOrder -ne "")) {
            $JsonData += @{ "pluginOrder" = $this.PluginOrder }
        }
        if (($null -ne $this.PathRegexp) -and ($this.PathRegexp -ne "")) {
            $JsonData += @{ "pathRegexp" = $this.PathRegexp }
        }
        if (($null -ne $this.PathReplace) -and ($this.PathReplace -ne "")) {
            $JsonData += @{ "pathReplace" = $this.PathReplace }
        }
        if (($null -ne $this.ParamValue) -and ($this.ParamValue -ne "")) {
            $JsonData += @{ "paramValue" = $this.ParamValue }
        }
        if (($null -ne $this.ParamName) -and ($this.ParamName -ne "")) {
            $JsonData += @{ "paramName" = $this.ParamName }
        }
        if (($null -ne $this.PathPrefix) -and ($this.PathPrefix -ne "")) {
            $JsonData += @{ "pathPrefix" = $this.PathPrefix }
        }
        if (($null -ne $this.PrefixParam) -and ($this.PrefixParam -ne "")) {
            $JsonData += @{ "prefixParam" = $this.PrefixParam }
        }
        if (($null -ne $this.SuffixParam) -and ($this.SuffixParam -ne "")) {
            $JsonData += @{ "suffixParam" = $this.SuffixParam }
        }
        if (($null -ne $this.DirParam) -and ($this.DirParam -ne "")) {
            $JsonData += @{ "dirParam" = $this.DirParam }
        }
        if (($null -ne $this.SuffixDelimiter) -and ($this.SuffixDelimiter -ne "")) {
            $JsonData += @{ "suffixDelimiter" = $this.SuffixDelimiter }
        }
        if (($null -ne $this.ParameterRegex) -and ($this.ParameterRegex -ne "")) {
            $JsonData += @{ "parameterRegex" = $this.ParameterRegex }
        }
        if (($null -ne $this.ParameterRewrite) -and ($this.ParameterRewrite -ne "")) {
            $JsonData += @{ "parameterRewrite" = $this.ParameterRewrite }
        }
        if (($null -ne $this.NameRegex) -and ($this.NameRegex -ne "")) {
            $JsonData += @{ "nameRegex" = $this.NameRegex }
        }
        if (($null -ne $this.ValueRegex) -and ($this.ValueRegex -ne "")) {
            $JsonData += @{ "valueRegex" = $this.ValueRegex }
        }
        if (($null -ne $this.Separator) -and ($this.Separator -ne "")) {
            $JsonData += @{ "separator" = $this.Separator }
        }
        if (($null -ne $this.Name) -and ($this.Name -ne "")) {
            $JsonData += @{ "name" = $this.Name }
        }
        if (($null -ne $this.Config) -and ($this.Config -ne "")) {
            $JsonData += @{ "config" = $this.Config }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class FirewallPolicyRule {
    [ValidateNotNullOrEmpty()] [ValidateSet("Add", "Remove", "Update")] [string] $Operation
    [ValidateNotNullOrEmpty()] [ValidateSet("Inbound", "Outbound")] [string] $Direction
    [ValidateNotNullOrEmpty()] [string] $Protocol
    [ValidateNotNullOrEmpty()] [string] $IPGroup

    FirewallPolicyRule() { }

    FirewallPolicyRule([string] $Operation_,
        [string] $Direction_,
        [string] $Protocol_,
        [string] $IPGroup_) {
        $this.Operation = $Operation_
        $this.Direction = $Direction_
        $this.Protocol = $Protocol_
        $this.IPGroup = $IPGroup_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Direction) -and ($this.Direction -ne "")) {
            $JsonData += @{ "direction" = $this.Direction }
        }
        if (($null -ne $this.Protocol) -and ($this.Protocol -ne "")) {
            $JsonData += @{ "protocol" = $this.Protocol }
        }
        if (($null -ne $this.IPGroup) -and ($this.IPGroup -ne "")) {
            $JsonData += @{ "ipGroup" = $this.IPGroup }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class FirewallPolicyApplyTo {
    [ValidateNotNullOrEmpty()] [string] $SiteName
    [ValidateNotNullOrEmpty()] [string] $ServerGroupName
    [ValidateNotNullOrEmpty()] [ValidateSet("Add", "Remove")] [string] $Operation

    FirewallPolicyApplyTo() { }

    FirewallPolicyApplyTo([string] $SiteName_,
        [string] $ServerGroupName_,
        [string] $Operation_) {
        $this.SiteName = $SiteName_
        $this.ServerGroupName = $ServerGroupName_
        $this.Operation = $Operation_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.SiteName) -and ($this.SiteName -ne "")) {
            $JsonData += @{ "siteName" = $this.SiteName }
        }
        if (($null -ne $this.ServerGroupName) -and ($this.ServerGroupName -ne "")) {
            $JsonData += @{ "serverGroupName" = $this.ServerGroupName }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class HTTPPolicyParameteredRule {
    [ValidateNotNullOrEmpty()] [string] $Name
    [ValidateNotNullOrEmpty()] [bool] $Enabled
    [ValidateNotNullOrEmpty()] [ValidateSet("noAlert", "informative", "low", "medium", "high")] [string] $Severity
    [ValidateNotNullOrEmpty()] [ValidateSet("none", "block")] [string] $Action
    [ValidateNotNullOrEmpty()] [string] $FollowedAction
    [ValidateNotNullOrEmpty()] $Parameters

    HTTPPolicyParameteredRule() { }

    HTTPPolicyParameteredRule([string] $Name_,
        [bool] $Enabled_,
        [string] $Severity_,
        [string] $Action_,
        [string] $FollowedAction_,
        $Parameters_) {
        $this.Name = $Name_
        $this.Enabled = $Enabled_
        $this.Severity = $Severity_
        $this.Action = $Action_
        $this.FollowedAction = $FollowedAction_
        $this.Parameters = $Parameters_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Name) -and ($this.Name -ne "")) {
            $JsonData += @{ "name" = $this.Name }
        }
        if (($null -ne $this.Enabled) -and ($this.Enabled -ne "")) {
            $JsonData += @{ "enabled" = $this.Enabled }
        }
        if (($null -ne $this.Severity) -and ($this.Severity -ne "")) {
            $JsonData += @{ "severity" = $this.Severity }
        }
        if (($null -ne $this.Action) -and ($this.Action -ne "")) {
            $JsonData += @{ "action" = $this.Action }
        }
        if (($null -ne $this.FollowedAction) -and ($this.FollowedAction -ne "")) {
            $JsonData += @{ "followedAction" = $this.FollowedAction }
        }
        if (($null -ne $this.Parameters) -and ($this.Parameters -ne "")) {
            $JsonData += @{ "parameters" = $this.Parameters }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class HTTPPolicyException {
    [ValidateNotNullOrEmpty()] [string] $RuleName
    [ValidateNotNullOrEmpty()] [string] $Comment
    [ValidateNotNullOrEmpty()] $Predicates

    HTTPPolicyException() { }

    HTTPPolicyException([string] $RuleName_,
        [string] $Comment_,
        $Predicates_) {
        $this.RuleName = $RuleName_
        $this.Comment = $Comment_
        $this.Predicates = $Predicates_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.RuleName) -and ($this.RuleName -ne "")) {
            $JsonData += @{ "ruleName" = $this.RuleName }
        }
        if (($null -ne $this.Comment) -and ($this.Comment -ne "")) {
            $JsonData += @{ "comment" = $this.Comment }
        }
        if (($null -ne $this.Predicates) -and ($this.Predicates -ne "")) {
            $JsonData += @{ "predicates" = $this.Predicates }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class HTTPPolicyApplyTo {
    [ValidateNotNullOrEmpty()] [string] $SiteName
    [ValidateNotNullOrEmpty()] [string] $ServerGroupName
    [ValidateNotNullOrEmpty()] [string] $WebServiceName
    [ValidateNotNullOrEmpty()] [string] $WebApplicationName
    [ValidateNotNullOrEmpty()] [ValidateSet("Add", "Remove")] [string] $Operation

    HTTPPolicyException() { }

    HTTPPolicyException([string] $SiteName_,
        [string] $ServerGroupName_,
        [string] $WebServiceName_,
        [string] $WebApplicationName_,
        [string] $Operation_) {
        $this.SiteName = $SiteName_
        $this.ServerGroupName = $ServerGroupName_
        $this.WebServiceName = $WebServiceName_
        $this.WebApplicationName = $WebApplicationName_
        $this.Operation = $Operation_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.SiteName) -and ($this.SiteName -ne "")) {
            $JsonData += @{ "siteName" = $this.SiteName }
        }
        if (($null -ne $this.ServerGroupName) -and ($this.ServerGroupName -ne "")) {
            $JsonData += @{ "serverGroupName" = $this.ServerGroupName }
        }
        if (($null -ne $this.WebServiceName) -and ($this.WebServiceName -ne "")) {
            $JsonData += @{ "webServiceName" = $this.WebServiceName }
        }
        if (($null -ne $this.WebApplicationName) -and ($this.WebApplicationName -ne "")) {
            $JsonData += @{ "webApplicationName" = $this.WebApplicationName }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class HTTPPolicyPredicateRequestHeaderValue {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [string] $Name
    [ValidateNotNullOrEmpty()] $Values

    HTTPPolicyPredicateRequestHeaderValue() { }

    HTTPPolicyPredicateRequestHeaderValue($Type_,
        [string] $Operation_,
        [string] $Name_,
        $Values_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Name = $Name_
        $this.Values = $Values_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Name) -and ($this.Name -ne "")) {
            $JsonData += @{ "name" = $this.Name }
        }
        if (($null -ne $this.Values) -and ($this.Values -ne "")) {
            $JsonData += @{ "values" = $this.Values }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class HTTPPolicyPredicateRequestParameterName {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] $Values

    HTTPPolicyPredicateRequestParameterName() { }

    HTTPPolicyPredicateRequestParameterName($Type_,
        [string] $Operation_,
        $Values_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Values = $Values_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Values) -and ($this.Values -ne "")) {
            $JsonData += @{ "values" = $this.Values }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class HTTPPolicyPredicateRequestURL {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("exact", "prefix")] [string] $Match
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] $Values

    HTTPPolicyPredicateRequestURL() { }

    HTTPPolicyPredicateRequestURL($Type_,
        [string] $Match_,
        [string] $Operation_,
        [string] $Values_) {
        $this.Type = $Type_
        $this.Match = $Match_
        $this.Operation = $Operation_
        $this.Values = $Values_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Match) -and ($this.Match -ne "")) {
            $JsonData += @{ "match" = $this.Match }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Values) -and ($this.Values -ne "")) {
            $JsonData += @{ "values" = $this.Values }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class HTTPPolicyPredicateServices {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] $Services

    HTTPPolicyPredicateRequestURL() { }

    HTTPPolicyPredicateRequestURL($Type_,
        [string] $Operation_,
        [string] $Services_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Services = $Services_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Services) -and ($this.Services -ne "")) {
            $JsonData += @{ "services" = $this.Services }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class HTTPPolicyPredicateServicesService {
    [ValidateNotNullOrEmpty()] [string] $SiteName
    [ValidateNotNullOrEmpty()] [string] $ServerGroupName
    [ValidateNotNullOrEmpty()] [string] $ServiceName

    HTTPPolicyPredicateServicesService() { }

    HTTPPolicyPredicateServicesService([string] $SiteName_,
        [string] $ServerGroupName_,
        [string] $ServiceName_) {
        $this.SiteName = $SiteName_
        $this.ServerGroupName = $ServerGroupName_
        $this.ServiceName = $ServiceName_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.SiteName) -and ($this.SiteName -ne "")) {
            $JsonData += @{ "siteName" = $this.SiteName }
        }
        if (($null -ne $this.ServerGroupName) -and ($this.ServerGroupName -ne "")) {
            $JsonData += @{ "serverGroupName" = $this.ServerGroupName }
        }
        if (($null -ne $this.ServiceName) -and ($this.ServiceName -ne "")) {
            $JsonData += @{ "serviceName" = $this.ServiceName }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class HTTPPolicyPredicateSourceIPAddresses {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [string] $UserDefined
    [ValidateNotNullOrEmpty()] $IPGroups

    HTTPPolicyPredicateSourceIPAddresses() { }

    HTTPPolicyPredicateSourceIPAddresses($Type_,
        [string] $Operation_,
        [string] $UserDefined_,
        $IPGroups_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.UserDefined = $UserDefined_
        $this.IPGroups = $IPGroups_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.UserDefined) -and ($this.UserDefined -ne "")) {
            $JsonData += @{ "userDefined" = $this.UserDefined }
        }
        if (($null -ne $this.IPGroups) -and ($this.IPGroups -ne "")) {
            $JsonData += @{ "ipGroups" = $this.IPGroups }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class HTTPSignaturesPolicyRule {
    [ValidateNotNullOrEmpty()] [string] $Name
    [ValidateNotNullOrEmpty()] [bool] $Enabled
    [ValidateNotNullOrEmpty()] [ValidateSet("noAlert", "informative", "low", "medium", "high")] [string] $Severity
    [ValidateNotNullOrEmpty()] [ValidateSet("none", "block")] [string] $Action
    [ValidateNotNullOrEmpty()] [string] $FollowedAction

    HTTPSignaturesPolicyRule() { }

    HTTPSignaturesPolicyRule([string] $Name_,
        [bool] $Enabled_,
        [string] $Severity_,
        [string] $Action_,
        [string] $FollowedAction_) {
        $this.Name = $Name_
        $this.Enabled = $Enabled_
        $this.Severity = $Severity_
        $this.Action = $Action_
        $this.FollowedAction = $FollowedAction_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Name) -and ($this.Name -ne "")) {
            $JsonData += @{ "name" = $this.Name }
        }
        if (($null -ne $this.Enabled) -and ($this.Enabled -ne "")) {
            $JsonData += @{ "enabled" = $this.Enabled }
        }
        if (($null -ne $this.Severity) -and ($this.Severity -ne "")) {
            $JsonData += @{ "severity" = $this.Severity }
        }
        if (($null -ne $this.Action) -and ($this.Action -ne "")) {
            $JsonData += @{ "action" = $this.Action }
        }
        if (($null -ne $this.FollowedAction) -and ($this.FollowedAction -ne "")) {
            $JsonData += @{ "followedAction" = $this.FollowedAction }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class HTTPSignaturesPolicyApplyTo {
    [ValidateNotNullOrEmpty()] [string] $SiteName
    [ValidateNotNullOrEmpty()] [string] $ServerGroupName
    [ValidateNotNullOrEmpty()] [string] $WebServiceName
    [ValidateNotNullOrEmpty()] [ValidateSet("add", "remove")] [string] $Operation

    HTTPSignaturesPolicyApplyTo() { }

    HTTPSignaturesPolicyApplyTo([string] $SiteName_,
        [string] $ServerGroupName_,
        [string] $WebServiceName_,
        [string] $Operation_) {
        $this.SiteName = $SiteName_
        $this.ServerGroupName = $ServerGroupName_
        $this.WebServiceName = $WebServiceName_
        $this.Operation = $Operation_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.SiteName) -and ($this.SiteName -ne "")) {
            $JsonData += @{ "siteName" = $this.SiteName }
        }
        if (($null -ne $this.ServerGroupName) -and ($this.ServerGroupName -ne "")) {
            $JsonData += @{ "serverGroupName" = $this.ServerGroupName }
        }
        if (($null -ne $this.WebServiceName) -and ($this.WebServiceName -ne "")) {
            $JsonData += @{ "webServiceName" = $this.WebServiceName }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class HTTPSignaturesPredicateAuthenticatedSession {
    [ValidateNotNullOrEmpty()] [string] $Type
    [ValidateNotNullOrEmpty()] [string] $Value

    HTTPSignaturesPredicateAuthenticatedSession() { }

    HTTPSignaturesPredicateAuthenticatedSession([string] $Type_,
        [string] $Value_) {
        $this.Type = $Type_
        $this.Value = $Value_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Value) -and ($this.Value -ne "")) {
            $JsonData += @{ "value" = $this.Value }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class HTTPSignaturesPredicateAuthenticationResult {
    [ValidateNotNullOrEmpty()] [string] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("failed", "successful")] [string] $Value

    HTTPSignaturesPredicateAuthenticationResult() { }

    HTTPSignaturesPredicateAuthenticationResult([string] $Type_,
        [string] $Value_) {
        $this.Type = $Type_
        $this.Value = $Value_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Value) -and ($this.Value -ne "")) {
            $JsonData += @{ "value" = $this.Value }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class HTTPSignaturesPredicateAuthenticationURL {
    [ValidateNotNullOrEmpty()] [string] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("no", "yes", "yesWithLoginFields")] [string] $Value

    HTTPSignaturesPredicateAuthenticationURL() { }

    HTTPSignaturesPredicateAuthenticationURL([string] $Type_,
        [string] $Value_) {
        $this.Type = $Type_
        $this.Value = $Value_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Value) -and ($this.Value -ne "")) {
            $JsonData += @{ "value" = $this.Value }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class HTTPSignaturesPredicateServices {
    [ValidateNotNullOrEmpty()] [string] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] $Services

    HTTPSignaturesPredicateServices() { }

    HTTPSignaturesPredicateServices([string] $Type_,
        [string] $Operation_,
        $Services_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Services = $Services_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Services) -and ($this.Services -ne "")) {
            $JsonData += @{ "services" = $this.Services }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class HTTPSignaturesPredicateServicesService {
    [ValidateNotNullOrEmpty()] [string] $SiteName
    [ValidateNotNullOrEmpty()] [string] $ServerGroupName
    [ValidateNotNullOrEmpty()] [string] $ServiceName

    HTTPSignaturesPredicateServicesService() { }

    HTTPSignaturesPredicateServicesService([string] $SiteName_,
        [string] $ServerGroupName_,
        [string] $ServiceName_) {
        $this.SiteName = $SiteName_
        $this.ServerGroupName = $ServerGroupName_
        $this.ServiceName = $ServiceName_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.SiteName) -and ($this.SiteName -ne "")) {
            $JsonData += @{ "siteName" = $this.SiteName }
        }
        if (($null -ne $this.ServerGroupName) -and ($this.ServerGroupName -ne "")) {
            $JsonData += @{ "serverGroupName" = $this.ServerGroupName }
        }
        if (($null -ne $this.ServiceName) -and ($this.ServiceName -ne "")) {
            $JsonData += @{ "serviceName" = $this.ServiceName }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class HTTPSignaturesPredicateSignatures {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] $Signatures

    HTTPSignaturesPredicateSignatures() { }

    HTTPSignaturesPredicateSignatures($Type_,
        [string] $Operation_,
        [string] $Signatures_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Signatures = $Signatures_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Signatures) -and ($this.Signatures -ne "")) {
            $JsonData += @{ "signatures" = $this.Signatures }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class HTTPSignaturesPredicateSignaturesSignature {
    [ValidateNotNullOrEmpty()] [string] $Name
    [ValidateNotNullOrEmpty()] [bool] $IsUserDefined

    HTTPSignaturesPredicateSignaturesSignature() { }

    HTTPSignaturesPredicateSignaturesSignature([string] $Name_,
        [bool] $IsUserDefined_) {
        $this.Name = $Name_
        $this.IsUserDefined = $IsUserDefined_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Name) -and ($this.Name -ne "")) {
            $JsonData += @{ "name" = $this.Name }
        }
        if (($null -ne $this.IsUserDefined) -and ($this.IsUserDefined -ne "")) {
            $JsonData += @{ "isUserDefined" = $this.IsUserDefined }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class StreamSignaturesPolicyRule {
    [ValidateNotNullOrEmpty()] [string] $Name
    [ValidateNotNullOrEmpty()] [bool] $Enabled
    [ValidateNotNullOrEmpty()] [ValidateSet("noAlert", "informative", "low", "medium", "high")] [string] $Severity
    [ValidateNotNullOrEmpty()] [ValidateSet("none", "block")] [string] $Action
    [ValidateNotNullOrEmpty()] [string] $FollowedAction
    [ValidateNotNullOrEmpty()] $Parameters

    StreamSignaturesPolicyRule() { }

    StreamSignaturesPolicyRule([string] $Name_,
        [bool] $Enabled_,
        [string] $Severity_,
        [string] $Action_,
        [string] $FollowedAction_,
        $Parameters_) {
        $this.Name = $Name_
        $this.Enabled = $Enabled_
        $this.Severity = $Severity_
        $this.Action = $Action_
        $this.FollowedAction = $FollowedAction_
        $this.Parameters = $Parameters_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Name) -and ($this.Name -ne "")) {
            $JsonData += @{ "name" = $this.Name }
        }
        if (($null -ne $this.Enabled) -and ($this.Enabled -ne "")) {
            $JsonData += @{ "enabled" = $this.Enabled }
        }
        if (($null -ne $this.Severity) -and ($this.Severity -ne "")) {
            $JsonData += @{ "severity" = $this.Severity }
        }
        if (($null -ne $this.Action) -and ($this.Action -ne "")) {
            $JsonData += @{ "action" = $this.Action }
        }
        if (($null -ne $this.FollowedAction) -and ($this.FollowedAction -ne "")) {
            $JsonData += @{ "followedAction" = $this.FollowedAction }
        }
        if (($null -ne $this.Parameters) -and ($this.Parameters -ne "")) {
            $JsonData += @{ "parameters" = $this.Parameters }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class StreamSignaturesPolicyApplyTo {
    [ValidateNotNullOrEmpty()] [string] $SiteName
    [ValidateNotNullOrEmpty()] [string] $ServerGroupName
    [ValidateNotNullOrEmpty()] [ValidateSet("add", "remove")] [string] $Operation

    StreamSignaturesPolicyApplyTo() { }

    StreamSignaturesPolicyApplyTo([string] $SiteName_,
        [string] $ServerGroupName_,
        [string] $Operation_) {
        $this.SiteName = $SiteName_
        $this.ServerGroupName = $ServerGroupName_
        $this.Operation = $Operation_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.SiteName) -and ($this.SiteName -ne "")) {
            $JsonData += @{ "siteName" = $this.SiteName }
        }
        if (($null -ne $this.ServerGroupName) -and ($this.ServerGroupName -ne "")) {
            $JsonData += @{ "serverGroupName" = $this.ServerGroupName }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebApplicationCustomPolicyApplyTo {
    [ValidateNotNullOrEmpty()] [string] $SiteName
    [ValidateNotNullOrEmpty()] [string] $ServerGroupName
    [ValidateNotNullOrEmpty()] [string] $WebServiceName
    [ValidateNotNullOrEmpty()] [string] $WebApplicationName
    [ValidateNotNullOrEmpty()] [ValidateSet("add", "remove")] [string] $Operation

    WebApplicationCustomPolicyApplyTo() { }

    WebApplicationCustomPolicyApplyTo([string] $SiteName_,
        [string] $ServerGroupName_,
        [string] $WebServiceName_,
        [string] $WebApplicationName_,
        [string] $Operation_) {
        $this.SiteName = $SiteName_
        $this.ServerGroupName = $ServerGroupName_
        $this.WebServiceName = $WebServiceName_
        $this.WebApplicationName = $WebApplicationName_
        $this.Operation = $Operation_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.SiteName) -and ($this.SiteName -ne "")) {
            $JsonData += @{ "siteName" = $this.SiteName }
        }
        if (($null -ne $this.ServerGroupName) -and ($this.ServerGroupName -ne "")) {
            $JsonData += @{ "serverGroupName" = $this.ServerGroupName }
        }
        if (($null -ne $this.WebServiceName) -and ($this.WebServiceName -ne "")) {
            $JsonData += @{ "webServiceName" = $this.WebServiceName }
        }
        if (($null -ne $this.WebApplicationName) -and ($this.WebApplicationName -ne "")) {
            $JsonData += @{ "webApplicationName" = $this.WebApplicationName }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebApplicationSignaturesPolicyRule {
    [ValidateNotNullOrEmpty()] [string] $Name
    [ValidateNotNullOrEmpty()] [bool] $Enabled
    [ValidateNotNullOrEmpty()] [ValidateSet("noAlert", "informative", "low", "medium", "high")] [string] $Severity
    [ValidateNotNullOrEmpty()] [ValidateSet("none", "block")] [string] $Action
    [ValidateNotNullOrEmpty()] [string] $FollowedAction

    WebApplicationSignaturesPolicyRule() { }

    WebApplicationSignaturesPolicyRule([string] $Name_,
        [bool] $Enabled_,
        [string] $Severity_,
        [string] $Action_,
        [string] $FollowedAction_) {
        $this.Name = $Name_
        $this.Enabled = $Enabled_
        $this.Severity = $Severity_
        $this.Action = $Action_
        $this.FollowedAction = $FollowedAction_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Name) -and ($this.Name -ne "")) {
            $JsonData += @{ "name" = $this.Name }
        }
        if (($null -ne $this.Enabled) -and ($this.Enabled -ne "")) {
            $JsonData += @{ "enabled" = $this.Enabled }
        }
        if (($null -ne $this.Severity) -and ($this.Severity -ne "")) {
            $JsonData += @{ "severity" = $this.Severity }
        }
        if (($null -ne $this.Action) -and ($this.Action -ne "")) {
            $JsonData += @{ "action" = $this.Action }
        }
        if (($null -ne $this.FollowedAction) -and ($this.FollowedAction -ne "")) {
            $JsonData += @{ "followedAction" = $this.FollowedAction }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebApplicationSignaturesPolicyApplyTo {
    [ValidateNotNullOrEmpty()] [string] $SiteName
    [ValidateNotNullOrEmpty()] [string] $ServerGroupName
    [ValidateNotNullOrEmpty()] [string] $WebServiceName
    [ValidateNotNullOrEmpty()] [string] $WebApplicationName
    [ValidateNotNullOrEmpty()] [ValidateSet("Add", "Remove")] [string] $Operation

    WebApplicationSignaturesPolicyApplyTo() { }

    WebApplicationSignaturesPolicyApplyTo([string] $SiteName_,
        [string] $ServerGroupName_,
        [string] $WebServiceName_,
        [string] $WebApplicationName_,
        [string] $Operation_) {
        $this.SiteName = $SiteName_
        $this.ServerGroupName = $ServerGroupName_
        $this.WebServiceName = $WebServiceName_
        $this.WebApplicationName = $WebApplicationName_
        $this.Operation = $Operation_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.SiteName) -and ($this.SiteName -ne "")) {
            $JsonData += @{ "siteName" = $this.SiteName }
        }
        if (($null -ne $this.ServerGroupName) -and ($this.ServerGroupName -ne "")) {
            $JsonData += @{ "serverGroupName" = $this.ServerGroupName }
        }
        if (($null -ne $this.WebServiceName) -and ($this.WebServiceName -ne "")) {
            $JsonData += @{ "webServiceName" = $this.WebServiceName }
        }
        if (($null -ne $this.WebApplicationName) -and ($this.WebApplicationName -ne "")) {
            $JsonData += @{ "webApplicationName" = $this.WebApplicationName }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}


class WebApplicationSignaturesPredicateAuthenticatedSession {
    [ValidateNotNullOrEmpty()] [string] $Type
    [ValidateNotNullOrEmpty()] [string] $Value

    WebApplicationSignaturesPredicateAuthenticatedSession() { }

    WebApplicationSignaturesPredicateAuthenticatedSession([string] $Type_,
        [string] $Value_) {
        $this.Type = $Type_
        $this.Value = $Value_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Value) -and ($this.Value -ne "")) {
            $JsonData += @{ "value" = $this.Value }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}


class WebApplicationSignaturesPredicateAuthenticationResult {
    [ValidateNotNullOrEmpty()] [string] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("failed", "successful")] [string] $Value

    WebApplicationSignaturesPredicateAuthenticationResult() { }

    WebApplicationSignaturesPredicateAuthenticationResult([string] $Type_,
        [string] $Value_) {
        $this.Type = $Type_
        $this.Value = $Value_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Value) -and ($this.Value -ne "")) {
            $JsonData += @{ "value" = $this.Value }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}


class WebApplicationSignaturesPredicateAuthenticationURL {
    [ValidateNotNullOrEmpty()] [string] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("no", "yes", "yesWithLoginFields")] [string] $Value

    WebApplicationSignaturesPredicateAuthenticationURL() { }

    WebApplicationSignaturesPredicateAuthenticationURL([string] $Type_,
        [string] $Value_) {
        $this.Type = $Type_
        $this.Value = $Value_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Value) -and ($this.Value -ne "")) {
            $JsonData += @{ "value" = $this.Value }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}


class WebApplicationSignaturesPredicateServices {
    [ValidateNotNullOrEmpty()] [string] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] $Services

    WebApplicationSignaturesPredicateServices() { }

    WebApplicationSignaturesPredicateServices([string] $Type_,
        [string] $Operation_,
        $Services_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Services = $Services_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Services) -and ($this.Services -ne "")) {
            $JsonData += @{ "services" = $this.Services }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebApplicationSignaturesPredicateServicesService {
    [ValidateNotNullOrEmpty()] [string] $SiteName
    [ValidateNotNullOrEmpty()] [string] $ServerGroupName
    [ValidateNotNullOrEmpty()] [string] $ServiceName

    WebApplicationSignaturesPredicateServicesService() { }

    WebApplicationSignaturesPredicateServicesService([string] $SiteName_,
        [string] $ServerGroupName_,
        [string] $ServiceName_) {
        $this.SiteName = $SiteName_
        $this.ServerGroupName = $ServerGroupName_
        $this.ServiceName = $ServiceName_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.SiteName) -and ($this.SiteName -ne "")) {
            $JsonData += @{ "siteName" = $this.SiteName }
        }
        if (($null -ne $this.ServerGroupName) -and ($this.ServerGroupName -ne "")) {
            $JsonData += @{ "serverGroupName" = $this.ServerGroupName }
        }
        if (($null -ne $this.ServiceName) -and ($this.ServiceName -ne "")) {
            $JsonData += @{ "serviceName" = $this.ServiceName }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}


class WebApplicationSignaturesPredicateSignatures {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] $Signatures

    WebApplicationSignaturesPredicateSignatures() { }

    WebApplicationSignaturesPredicateSignatures($Type_,
        [string] $Operation_,
        [string] $Signatures_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Signatures = $Signatures_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Signatures) -and ($this.Signatures -ne "")) {
            $JsonData += @{ "signatures" = $this.Signatures }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebApplicationSignaturesPredicateSignaturesSignature {
    [ValidateNotNullOrEmpty()] [string] $Name
    [ValidateNotNullOrEmpty()] [bool] $IsUserDefined

    WebApplicationSignaturesPredicateSignaturesSignature() { }

    WebApplicationSignaturesPredicateSignaturesSignature([string] $Name_,
        [bool] $IsUserDefined_) {
        $this.Name = $Name_
        $this.IsUserDefined = $IsUserDefined_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Name) -and ($this.Name -ne "")) {
            $JsonData += @{ "name" = $this.Name }
        }
        if (($null -ne $this.IsUserDefined) -and ($this.IsUserDefined -ne "")) {
            $JsonData += @{ "isUserDefined" = $this.IsUserDefined }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebCorrelationPolicyParameteredRule {
    [ValidateNotNullOrEmpty()] [string] $Name
    [ValidateNotNullOrEmpty()] [bool] $Enabled
    [ValidateNotNullOrEmpty()] [ValidateSet("noAlert", "informative", "low", "medium", "high")] [string] $Severity
    [ValidateNotNullOrEmpty()] [ValidateSet("none", "block")] [string] $Action
    [ValidateNotNullOrEmpty()] [string] $FollowedAction
    [ValidateNotNullOrEmpty()] $Parameters

    WebCorrelationPolicyParameteredRule() { }

    WebCorrelationPolicyParameteredRule([string] $Name_,
        [bool] $Enabled_,
        [string] $Severity_,
        [string] $Action_,
        [string] $FollowedAction_,
        $Parameters_) {
        $this.Name = $Name_
        $this.Enabled = $Enabled_
        $this.Severity = $Severity_
        $this.Action = $Action_
        $this.FollowedAction = $FollowedAction_
        $this.Parameters = $Parameters_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Name) -and ($this.Name -ne "")) {
            $JsonData += @{ "name" = $this.Name }
        }
        if (($null -ne $this.Enabled) -and ($this.Enabled -ne "")) {
            $JsonData += @{ "enabled" = $this.Enabled }
        }
        if (($null -ne $this.Severity) -and ($this.Severity -ne "")) {
            $JsonData += @{ "severity" = $this.Severity }
        }
        if (($null -ne $this.Action) -and ($this.Action -ne "")) {
            $JsonData += @{ "action" = $this.Action }
        }
        if (($null -ne $this.FollowedAction) -and ($this.FollowedAction -ne "")) {
            $JsonData += @{ "followedAction" = $this.FollowedAction }
        }
        if (($null -ne $this.Parameters) -and ($this.Parameters -ne "")) {
            $JsonData += @{ "parameters" = $this.Parameters }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebCorrelationPolicyException {
    [ValidateNotNullOrEmpty()] [string] $RuleName
    [ValidateNotNullOrEmpty()] [string] $Comment
    [ValidateNotNullOrEmpty()] $Predicates

    WebCorrelationPolicyException() { }

    WebCorrelationPolicyException([string] $RuleName_,
        [string] $Comment_,
        $Predicates_) {
        $this.RuleName = $RuleName_
        $this.Comment = $Comment_
        $this.Predicates = $Predicates_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.RuleName) -and ($this.RuleName -ne "")) {
            $JsonData += @{ "ruleName" = $this.RuleName }
        }
        if (($null -ne $this.Comment) -and ($this.Comment -ne "")) {
            $JsonData += @{ "comment" = $this.Comment }
        }
        if (($null -ne $this.Predicates) -and ($this.Predicates -ne "")) {
            $JsonData += @{ "predicates" = $this.Predicates }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebCorrelationPolicyPredicateHTTTPRequestHeaderValue {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [string] $Name
    [ValidateNotNullOrEmpty()] $Values

    WebCorrelationPolicyPredicateHTTTPRequestHeaderValue() { }

    WebCorrelationPolicyPredicateHTTTPRequestHeaderValue($Type_,
        [string] $Operation_,
        [string] $Name_,
        $Values_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Name = $Name_
        $this.Values = $Values_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Name) -and ($this.Name -ne "")) {
            $JsonData += @{ "name" = $this.Name }
        }
        if (($null -ne $this.Values) -and ($this.Values -ne "")) {
            $JsonData += @{ "values" = $this.Values }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebCorrelationPolicyApplyTo {
    [ValidateNotNullOrEmpty()] [string] $SiteName
    [ValidateNotNullOrEmpty()] [string] $ServerGroupName
    [ValidateNotNullOrEmpty()] [string] $WebServiceName
    [ValidateNotNullOrEmpty()] [string] $WebApplicationName
    [ValidateNotNullOrEmpty()] [ValidateSet("Add", "Remove")] [string] $Operation

    WebCorrelationPolicyApplyTo() { }

    WebCorrelationPolicyApplyTo([string] $SiteName_,
        [string] $ServerGroupName_,
        [string] $WebServiceName_,
        [string] $WebApplicationName_,
        [string] $Operation_) {
        $this.SiteName = $SiteName_
        $this.ServerGroupName = $ServerGroupName_
        $this.WebServiceName = $WebServiceName_
        $this.WebApplicationName = $WebApplicationName_
        $this.Operation = $Operation_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.SiteName) -and ($this.SiteName -ne "")) {
            $JsonData += @{ "siteName" = $this.SiteName }
        }
        if (($null -ne $this.ServerGroupName) -and ($this.ServerGroupName -ne "")) {
            $JsonData += @{ "serverGroupName" = $this.ServerGroupName }
        }
        if (($null -ne $this.WebServiceName) -and ($this.WebServiceName -ne "")) {
            $JsonData += @{ "webServiceName" = $this.WebServiceName }
        }
        if (($null -ne $this.WebApplicationName) -and ($this.WebApplicationName -ne "")) {
            $JsonData += @{ "webApplicationName" = $this.WebApplicationName }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebProfilePolicyParameteredRule {
    [ValidateNotNullOrEmpty()] [string] $Name
    [ValidateNotNullOrEmpty()] [bool] $Enabled
    [ValidateNotNullOrEmpty()] [ValidateSet("noAlert", "informative", "low", "medium", "high")] [string] $Severity
    [ValidateNotNullOrEmpty()] [ValidateSet("none", "block")] [string] $Action
    [ValidateNotNullOrEmpty()] [string] $FollowedAction
    [ValidateNotNullOrEmpty()] $Parameters

    WebProfilePolicyParameteredRule() { }

    WebProfilePolicyParameteredRule([string] $Name_,
        [bool] $Enabled_,
        [string] $Severity_,
        [string] $Action_,
        [string] $FollowedAction_,
        $Parameters_) {
        $this.Name = $Name_
        $this.Enabled = $Enabled_
        $this.Severity = $Severity_
        $this.Action = $Action_
        $this.FollowedAction = $FollowedAction_
        $this.Parameters = $Parameters_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Name) -and ($this.Name -ne "")) {
            $JsonData += @{ "name" = $this.Name }
        }
        if (($null -ne $this.Enabled) -and ($this.Enabled -ne "")) {
            $JsonData += @{ "enabled" = $this.Enabled }
        }
        if (($null -ne $this.Severity) -and ($this.Severity -ne "")) {
            $JsonData += @{ "severity" = $this.Severity }
        }
        if (($null -ne $this.Action) -and ($this.Action -ne "")) {
            $JsonData += @{ "action" = $this.Action }
        }
        if (($null -ne $this.FollowedAction) -and ($this.FollowedAction -ne "")) {
            $JsonData += @{ "followedAction" = $this.FollowedAction }
        }
        if (($null -ne $this.Parameters) -and ($this.Parameters -ne "")) {
            $JsonData += @{ "parameters" = $this.Parameters }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebProfilePolicyException {
    [ValidateNotNullOrEmpty()] [string] $RuleName
    [ValidateNotNullOrEmpty()] [string] $Comment
    [ValidateNotNullOrEmpty()] $Predicates

    WebProfilePolicyException() { }

    WebProfilePolicyException([string] $RuleName_,
        [string] $Comment_,
        $Predicates_) {
        $this.RuleName = $RuleName_
        $this.Comment = $Comment_
        $this.Predicates = $Predicates_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.RuleName) -and ($this.RuleName -ne "")) {
            $JsonData += @{ "ruleName" = $this.RuleName }
        }
        if (($null -ne $this.Comment) -and ($this.Comment -ne "")) {
            $JsonData += @{ "comment" = $this.Comment }
        }
        if (($null -ne $this.Predicates) -and ($this.Predicates -ne "")) {
            $JsonData += @{ "predicates" = $this.Predicates }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebProfilePolicyAPURuleConfig {
    [ValidateNotNullOrEmpty()] [string] $Enabled
    [ValidateNotNullOrEmpty()] [UInt32] $Hours 
    [ValidateNotNullOrEmpty()] [UInt32] $Occurrences  
    [ValidateNotNullOrEmpty()] [UInt32] $Sources

    WebProfilePolicyAPURuleConfig() { }

    WebProfilePolicyAPURuleConfig([string] $Enabled_,
        [UInt32] $Hours_,
        [UInt32] $Occurrences_,
        [UInt32] $Sources_) {
        $this.Enabled = $Enabled_
        $this.Hours = $Hours_
        $this.Occurrences = $Occurrences_
        $this.Sources = $Sources_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Enabled) -and ($this.Enabled -ne "")) {
            $JsonData += @{ "Enabled" = $this.Enabled }
        }
        if (($null -ne $this.Hours) -and ($this.Hours -ne "")) {
            $JsonData += @{ "Hours" = $this.Hours }
        }
        if (($null -ne $this.Occurrences) -and ($this.Occurrences -ne "")) {
            $JsonData += @{ "Occurrences" = $this.Occurrences }
        }
        if (($null -ne $this.Sources) -and ($this.Sources -ne "")) {
            $JsonData += @{ "Sources" = $this.Sources }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebProfilePolicyApplyTo {
    [ValidateNotNullOrEmpty()] [string] $SiteName
    [ValidateNotNullOrEmpty()] [string] $ServerGroupName
    [ValidateNotNullOrEmpty()] [string] $WebServiceName
    [ValidateNotNullOrEmpty()] [string] $WebApplicationName
    [ValidateNotNullOrEmpty()] [ValidateSet("Add", "Remove")] [string] $Operation

    WebProfilePolicyApplyTo() { }

    WebProfilePolicyApplyTo([string] $SiteName_,
        [string] $ServerGroupName_,
        [string] $WebServiceName_,
        [string] $WebApplicationName_,
        [string] $Operation_) {
        $this.SiteName = $SiteName_
        $this.ServerGroupName = $ServerGroupName_
        $this.WebServiceName = $WebServiceName_
        $this.WebApplicationName = $WebApplicationName_
        $this.Operation = $Operation_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.SiteName) -and ($this.SiteName -ne "")) {
            $JsonData += @{ "siteName" = $this.SiteName }
        }
        if (($null -ne $this.ServerGroupName) -and ($this.ServerGroupName -ne "")) {
            $JsonData += @{ "serverGroupName" = $this.ServerGroupName }
        }
        if (($null -ne $this.WebServiceName) -and ($this.WebServiceName -ne "")) {
            $JsonData += @{ "webServiceName" = $this.WebServiceName }
        }
        if (($null -ne $this.WebApplicationName) -and ($this.WebApplicationName -ne "")) {
            $JsonData += @{ "webApplicationName" = $this.WebApplicationName }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebProfilePolicyPredicateHTTPVersion {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] $Values

    WebProfilePolicyPredicateHTTPVersion() { }

    WebProfilePolicyPredicateHTTPVersion($Type_,
        [string] $Operation_,
        $Values_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Values = $Values_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Values) -and ($this.Values -ne "")) {
            $JsonData += @{ "values" = $this.Values }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class WebServiceCustomPolicyApplyTo {
    [ValidateNotNullOrEmpty()] [string] $SiteName
    [ValidateNotNullOrEmpty()] [string] $ServerGroupName
    [ValidateNotNullOrEmpty()] [string] $WebServiceName
    [ValidateNotNullOrEmpty()] [ValidateSet("add", "remove")] [string] $Operation

    WebServiceCustomPolicyApplyTo() { }

    WebServiceCustomPolicyApplyTo([string] $SiteName_,
        [string] $ServerGroupName_,
        [string] $WebServiceName_,
        [string] $Operation_) {
        $this.SiteName = $SiteName_
        $this.ServerGroupName = $ServerGroupName_
        $this.WebServiceName = $WebServiceName_
        $this.Operation = $Operation_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.SiteName) -and ($this.SiteName -ne "")) {
            $JsonData += @{ "siteName" = $this.SiteName }
        }
        if (($null -ne $this.ServerGroupName) -and ($this.ServerGroupName -ne "")) {
            $JsonData += @{ "serverGroupName" = $this.ServerGroupName }
        }
        if (($null -ne $this.WebServiceName) -and ($this.WebServiceName -ne "")) {
            $JsonData += @{ "webServiceName" = $this.WebServiceName }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaApplicationUser {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] $Values
    [ValidateNotNullOrEmpty()] [bool] $MatchNoOrUnknownUser

    MatchCriteriaApplicationUser() { }

    MatchCriteriaApplicationUser($Type_,
        [string] $Operation_,
        $Values_,
        [bool] $MatchNoOrUnknownUser_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Values = $Values_
        $this.MatchNoOrUnknownUser = $MatchNoOrUnknownUser_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Values) -and ($this.Values -ne "")) {
            $JsonData += @{ "values" = $this.Values }
        }
        if (($null -ne $this.MatchNoOrUnknownUser) -and ($this.MatchNoOrUnknownUser -ne "")) {
            $JsonData += @{ "matchNoOrUnknownUser" = $this.MatchNoOrUnknownUser }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaAuthenticatedSession {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [bool] $Value

    MatchCriteriaAuthenticatedSession() { }

    MatchCriteriaAuthenticatedSession($Type_,
        [bool] $Value_) {
        $this.Type = $Type_
        $this.Value = $Value_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Value) -and ($this.Value -ne "")) {
            $JsonData += @{ "value" = $this.Value }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaAuthenticationResult {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("failed", "successful")] [string] $Value

    MatchCriteriaAuthenticationResult() { }

    MatchCriteriaAuthenticationResult($Type_,
        [bool] $Value_) {
        $this.Type = $Type_
        $this.Value = $Value_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Value) -and ($this.Value -ne "")) {
            $JsonData += @{ "value" = $this.Value }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaAuthenticationURL {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("no", "yes", "yesWithLoginFields")] [string] $Value

    MatchCriteriaAuthenticationURL() { }

    MatchCriteriaAuthenticationURL($Type_,
        [bool] $Value_) {
        $this.Type = $Type_
        $this.Value = $Value_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Value) -and ($this.Value -ne "")) {
            $JsonData += @{ "value" = $this.Value }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaClientType {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [ValidateSet("trustedBots", "whiteListedBots", "badBot", "generalBot", "unknown", "human")] [string] $ClientTypes

    MatchCriteriaClientType() { }

    MatchCriteriaClientType($Type_,
        [string] $Operation_,
        [bool] $ClientTypes_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.ClientTypes = $ClientTypes_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.ClientTypes) -and ($this.ClientTypes -ne "")) {
            $JsonData += @{ "clientTypes" = $this.ClientTypes }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaDataSet {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [ValidateSet("acceptLanguages", "additionalLoginField", "contentType", "cookieNames", "cookies", "deviceID", "fileTypes", "headers", "hostNames", "methods", "parameters", "proxyIpAddresses", "refererHostAndURL", "referrerHostname", "referrerUrl", "responseCode", "sourceIPAddresses", "url", "user", "userAgent")] [string] $Field
    [ValidateNotNullOrEmpty()] [string] $LookupDataset
    [ValidateNotNullOrEmpty()] [string] $Attribute
    [ValidateNotNullOrEmpty()] [string] $SearchInUserValues
    [ValidateNotNullOrEmpty()] [string] $SearchInLookupDataset

    MatchCriteriaDataSet() { }

    MatchCriteriaDataSet($Type_,
        [string] $Operation_,
        [string] $Field_,
        [string] $LookupDataset_,
        [string] $Attribute_,
        [string] $SearchInUserValues_,
        [string] $SearchInLookupDataset_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Field = $Field_
        $this.LookupDataset = $LookupDataset_
        $this.Attribute = $Attribute_
        $this.SearchInUserValues = $SearchInUserValues_
        $this.SearchInLookupDataset = $SearchInLookupDataset_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Field) -and ($this.Field -ne "")) {
            $JsonData += @{ "field" = $this.Field }
        }
        if (($null -ne $this.LookupDataset) -and ($this.LookupDataset -ne "")) {
            $JsonData += @{ "lookupDataset" = $this.LookupDataset }
        }
        if (($null -ne $this.Attribute) -and ($this.Attribute -ne "")) {
            $JsonData += @{ "attribute" = $this.Attribute }
        }
        if (($null -ne $this.SearchInUserValues) -and ($this.SearchInUserValues -ne "")) {
            $JsonData += @{ "searchInUserValues" = $this.SearchInUserValues }
        }
        if (($null -ne $this.SearchInLookupDataset) -and ($this.SearchInLookupDataset -ne "")) {
            $JsonData += @{ "searchInLookupDataset" = $this.SearchInLookupDataset }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaEnrichmentData {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [string] $UserDefinedFieldName
    [ValidateNotNullOrEmpty()] [string] $SearchInUserValues
    [ValidateNotNullOrEmpty()] [string] $SearchInLookupDataset
    [ValidateNotNullOrEmpty()] [bool] $MatchUnknownValue

    MatchCriteriaEnrichmentData() { }

    MatchCriteriaEnrichmentData($Type_,
        [string] $Operation_,
        [string] $UserDefinedFieldName_,
        [string] $SearchInUserValues_,
        [string] $SearchInLookupDataset_,
        [bool] $MatchUnknownValue_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.UserDefinedFieldName = $UserDefinedFieldName_
        $this.SearchInUserValues = $SearchInUserValues_
        $this.SearchInLookupDataset = $SearchInLookupDataset_
        $this.MatchUnknownValue = $MatchUnknownValue_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.UserDefinedFieldName) -and ($this.UserDefinedFieldName -ne "")) {
            $JsonData += @{ "userDefinedFieldName" = $this.UserDefinedFieldName }
        }
        if (($null -ne $this.SearchInUserValues) -and ($this.SearchInUserValues -ne "")) {
            $JsonData += @{ "searchInUserValues" = $this.SearchInUserValues }
        }
        if (($null -ne $this.SearchInLookupDataset) -and ($this.SearchInLookupDataset -ne "")) {
            $JsonData += @{ "searchInLookupDataset" = $this.SearchInLookupDataset }
        }
        if (($null -ne $this.MatchUnknownValue) -and ($this.MatchUnknownValue -ne "")) {
            $JsonData += @{ "matchUnknownValue" = $this.MatchUnknownValue }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaGenericDictionary {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [ValidateSet("contains", "exact")] [string] $SearchMode
    [ValidateNotNullOrEmpty()] [string[]] $Dictionaries
    [ValidateNotNullOrEmpty()] [ValidateSet("url", "parameters", "headers", "urlsAndParameters", "responseContent", "nonNormalizedUrl")] [string] $Locations

    MatchCriteriaGenericDictionary() { }

    MatchCriteriaGenericDictionary($Type_,
        [string] $Operation_,
        [string] $SearchMode_,
        [string] $Dictionaries_,
        [string] $Locations_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.SearchMode = $SearchMode_
        $this.Dictionaries = $Dictionaries_
        $this.Locations = $Locations_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.SearchMode) -and ($this.SearchMode -ne "")) {
            $JsonData += @{ "searchMode" = $this.SearchMode }
        }
        if (($null -ne $this.Dictionaries) -and ($this.Dictionaries -ne "")) {
            $JsonData += @{ "dictionaries" = $this.Dictionaries }
        }
        if (($null -ne $this.Locations) -and ($this.Locations -ne "")) {
            $JsonData += @{ "locations" = $this.Locations }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaHTTPRequest {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("matchAll", "matchAny", "matchNone")] [string] $Operation
    [ValidateNotNullOrEmpty()] $MatchValues

    MatchCriteriaHTTPRequest() { }

    MatchCriteriaHTTPRequest($Type_,
        [string] $Operation_,
        [string] $MatchValues_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.MatchValues = $MatchValues_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.MatchValues) -and ($this.MatchValues -ne "")) {
            $JsonData += @{ "matchValues" = $this.MatchValues }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaHTTPRequestMatchValue {
    [ValidateNotNullOrEmpty()] [ValidateSet("url", "parameter", "header")] [string] $Part
    [ValidateNotNullOrEmpty()] [string] $Name
    [ValidateNotNullOrEmpty()] [ValidateSet("includes", "doesNotInclude", "matchRegExp", "doNotMatchRegExp")] [string] $Operation
    [ValidateNotNullOrEmpty()] [string] $Value

    MatchCriteriaHTTPRequestMatchValue() { }

    MatchCriteriaHTTPRequestMatchValue([string] $Part_,
        [string] $Name_,
        [string] $Operation_,
        [string] $Value_) {
        $this.Part = $Part_
        $this.Name = $Name_
        $this.Operation = $Operation_
        $this.Value = $Value_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Part) -and ($this.Part -ne "")) {
            $JsonData += @{ "part" = $this.Part }
        }
        if (($null -ne $this.Name) -and ($this.Name -ne "")) {
            $JsonData += @{ "name" = $this.Name }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Value) -and ($this.Value -ne "")) {
            $JsonData += @{ "value" = $this.Value }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaHTTPRequestAcceptLanguage {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [string[]] $Values

    MatchCriteriaHTTPRequestAcceptLanguage() { }

    MatchCriteriaHTTPRequestAcceptLanguage($Type_,
        [string] $Operation_,
        [string[]] $Values_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Values = $Values_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Values) -and ($this.Values -ne "")) {
            $JsonData += @{ "values" = $this.Values }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaHTTPRequestContentType {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [string[]] $Values

    MatchCriteriaHTTPRequestContentType() { }

    MatchCriteriaHTTPRequestContentType($Type_,
        [string] $Operation_,
        [string[]] $Values_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Values = $Values_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Values) -and ($this.Values -ne "")) {
            $JsonData += @{ "values" = $this.Values }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaHTTPCookieName {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] $CookieNames

    MatchCriteriaHTTPCookieName() { }

    MatchCriteriaHTTPCookieName($Type_,
        [string] $Operation_,
        $CookieNames_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.CookieNames = $CookieNames_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.CookieNames) -and ($this.CookieNames -ne "")) {
            $JsonData += @{ "cookieNames" = $this.CookieNames }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaHTTPCookieNameCookie {
    [ValidateNotNullOrEmpty()] [string] $Cookie
    [ValidateNotNullOrEmpty()] [ValidateSet("prefix", "exact")] [string] $MatchType

    MatchCriteriaHTTPCookieNameCookie() { }

    MatchCriteriaHTTPCookieNameCookie([string] $Cookie_,
        [string] $MatchType_) {
        $this.Cookie = $Cookie_
        $this.MatchType = $MatchType_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Cookie) -and ($this.Cookie -ne "")) {
            $JsonData += @{ "cookie" = $this.Cookie }
        }
        if (($null -ne $this.MatchType) -and ($this.MatchType -ne "")) {
            $JsonData += @{ "matchType" = $this.MatchType }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaHTTPRequestFileExtension {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [string[]] $Values

    MatchCriteriaHTTPRequestFileExtension() { }

    MatchCriteriaHTTPRequestFileExtension($Type_,
        [string] $Operation_,
        [string[]] $Values_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Values = $Values_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Values) -and ($this.Values -ne "")) {
            $JsonData += @{ "values" = $this.Values }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaHTTPRequestCookies {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [string] $Name
    [ValidateNotNullOrEmpty()] [ValidateSet("prefix", "exact")] [string] $Match
    [ValidateNotNullOrEmpty()] [string[]] $Values
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation

    MatchCriteriaHTTPRequestCookies() { }

    MatchCriteriaHTTPRequestCookies($Type_,
        [string] $Name_,
        [string] $Match_,
        [string[]] $Values_,
        [string] $Operation_) {
        $this.Type = $Type_
        $this.Name = $Name_
        $this.Match = $Match_
        $this.Values = $Values_
        $this.Operation = $Operation_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Name) -and ($this.Name -ne "")) {
            $JsonData += @{ "name" = $this.Name }
        }
        if (($null -ne $this.Match) -and ($this.Match -ne "")) {
            $JsonData += @{ "match" = $this.Match }
        }
        if (($null -ne $this.Values) -and ($this.Values -ne "")) {
            $JsonData += @{ "values" = $this.Values }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaHTTPRequestHeaderValue {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [string[]] $Values
    [ValidateNotNullOrEmpty()] [string] $Name

    MatchCriteriaHTTPRequestHeaderValue() { }

    MatchCriteriaHTTPRequestHeaderValue($Type_,
        [string] $Operation_,
        [string[]] $Values_,
        [string] $Name_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Values = $Values_
        $this.Name = $Name_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Values) -and ($this.Values -ne "")) {
            $JsonData += @{ "values" = $this.Values }
        }
        if (($null -ne $this.Name) -and ($this.Name -ne "")) {
            $JsonData += @{ "name" = $this.Name }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaHTTPRequestHeaderName {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [string[]] $Values

    MatchCriteriaHTTPRequestHeaderName() { }

    MatchCriteriaHTTPRequestHeaderName($Type_,
        [string] $Operation_,
        [string[]] $Values_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Values = $Values_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Values) -and ($this.Values -ne "")) {
            $JsonData += @{ "values" = $this.Values }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaHTTPRequestHostName {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [string[]] $Values

    MatchCriteriaHTTPRequestHostName() { }

    MatchCriteriaHTTPRequestHostName($Type_,
        [string] $Operation_,
        [string[]] $Values_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Values = $Values_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Values) -and ($this.Values -ne "")) {
            $JsonData += @{ "values" = $this.Values }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaHTTPRequestMethod {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [string[]] $Values

    MatchCriteriaHTTPRequestMethod() { }

    MatchCriteriaHTTPRequestMethod($Type_,
        [string] $Operation_,
        [string[]] $Values_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Values = $Values_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Values) -and ($this.Values -ne "")) {
            $JsonData += @{ "values" = $this.Values }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaHTTPRequestParameterName {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [string[]] $Values

    MatchCriteriaHTTPRequestParameterName() { }

    MatchCriteriaHTTPRequestParameterName($Type_,
        [string] $Operation_,
        [string[]] $Values_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Values = $Values_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Values) -and ($this.Values -ne "")) {
            $JsonData += @{ "values" = $this.Values }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaHTTPRequestParameterNamePrefix {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [string[]] $Values

    MatchCriteriaHTTPRequestParameterNamePrefix() { }

    MatchCriteriaHTTPRequestParameterNamePrefix($Type_,
        [string] $Operation_,
        [string[]] $Values_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Values = $Values_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Values) -and ($this.Values -ne "")) {
            $JsonData += @{ "values" = $this.Values }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaHTTPRequestRefererHostname {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [string[]] $Values

    MatchCriteriaHTTPRequestRefererHostname() { }

    MatchCriteriaHTTPRequestRefererHostname($Type_,
        [string] $Operation_,
        [string[]] $Values_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Values = $Values_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Values) -and ($this.Values -ne "")) {
            $JsonData += @{ "values" = $this.Values }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaHTTPRequestRefererURL {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [string[]] $Values

    MatchCriteriaHTTPRequestRefererURL() { }

    MatchCriteriaHTTPRequestRefererURL($Type_,
        [string] $Operation_,
        [string[]] $Values_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Values = $Values_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Values) -and ($this.Values -ne "")) {
            $JsonData += @{ "values" = $this.Values }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaHTTPRequestURL {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("exact", "prefix")] [string] $Match
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [string[]] $Values

    MatchCriteriaHTTPRequestURL() { }

    MatchCriteriaHTTPRequestURL($Type_,
        [string] $Match_,
        [string] $Operation_,
        [string[]] $Values_) {
        $this.Type = $Type_
        $this.Match = $Match_
        $this.Operation = $Operation_
        $this.Values = $Values_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Match) -and ($this.Match -ne "")) {
            $JsonData += @{ "match" = $this.Match }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Values) -and ($this.Values -ne "")) {
            $JsonData += @{ "values" = $this.Values }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaHTTPRequestUserAgent {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [string[]] $Values

    MatchCriteriaHTTPRequestUserAgent() { }

    MatchCriteriaHTTPRequestUserAgent($Type_,
        [string] $Operation_,
        [string[]] $Values_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Values = $Values_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Values) -and ($this.Values -ne "")) {
            $JsonData += @{ "values" = $this.Values }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaHTTPResponseHeaderName {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [string[]] $Values

    MatchCriteriaHTTPResponseHeaderName() { }

    MatchCriteriaHTTPResponseHeaderName($Type_,
        [string] $Operation_,
        [string[]] $Values_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Values = $Values_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Values) -and ($this.Values -ne "")) {
            $JsonData += @{ "values" = $this.Values }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaHTTPResponseCode {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [UInt32[]] $Values

    MatchCriteriaHTTPResponseCode() { }

    MatchCriteriaHTTPResponseCode($Type_,
        [string] $Operation_,
        [string[]] $Values_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Values = $Values_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Values) -and ($this.Values -ne "")) {
            $JsonData += @{ "values" = $this.Values }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaHTTPSession {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("equals", "notEquals")] [string] $Operation
    [ValidateNotNullOrEmpty()] [ValidateSet("validated", "invalidated", "no session")] [string] $Value

    MatchCriteriaHTTPSession() { }

    MatchCriteriaHTTPSession($Type_,
        [string] $Operation_,
        [string] $Value_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Value = $Value_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Value) -and ($this.Value -ne "")) {
            $JsonData += @{ "value" = $this.Value }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaLookupDataSetSearch {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [ValidateSet("acceptLanguages", "additionalLoginField", "contentType", "cookieNames", "cookies", "deviceID", "fileTypes", "headers", "hostNames", "methods", "parameters", "proxyIpAddresses", "refererHostAndURL", "referrerHostname", "referrerUrl", "responseCode", "sourceIPAddresses", "url", "user", "userAgent")] [string] $Field
    [ValidateNotNullOrEmpty()] [string] $SearchInUserValues
    [ValidateNotNullOrEmpty()] [string] $SearchInLookupDataset
    [ValidateNotNullOrEmpty()] [bool] $MatchUnknownValue

    MatchCriteriaLookupDataSetSearch() { }

    MatchCriteriaLookupDataSetSearch($Type_,
        [string] $Operation_,
        [string] $Field_,
        [string] $SearchInUserValues_,
        [string] $SearchInLookupDataset_,
        [bool] $MatchUnknownValue_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Field = $Field_
        $this.SearchInUserValues = $SearchInUserValues_
        $this.SearchInLookupDataset = $SearchInLookupDataset_
        $this.MatchUnknownValue = $MatchUnknownValue_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Field) -and ($this.Field -ne "")) {
            $JsonData += @{ "field" = $this.Field }
        }
        if (($null -ne $this.SearchInUserValues) -and ($this.SearchInUserValues -ne "")) {
            $JsonData += @{ "searchInUserValues" = $this.SearchInUserValues }
        }
        if (($null -ne $this.SearchInLookupDataset) -and ($this.SearchInLookupDataset -ne "")) {
            $JsonData += @{ "searchInLookupDataset" = $this.SearchInLookupDataset }
        }
        if (($null -ne $this.MatchUnknownValue) -and ($this.MatchUnknownValue -ne "")) {
            $JsonData += @{ "matchUnknownValue" = $this.MatchUnknownValue }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaNumberOfOccurrences {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [UInt32] $NumTimes
    [ValidateNotNullOrEmpty()] [UInt32] $WithinSeconds
    [ValidateNotNullOrEmpty()] [ValidateSet("serverGroup", "originationSession", "sourceIp", "user")] [string] $Context

    MatchCriteriaNumberOfOccurrences() { }

    MatchCriteriaNumberOfOccurrences($Type_,
        [UInt32] $NumTimes_,
        [UInt32] $WithinSeconds_,
        [string] $Context_) {
        $this.Type = $Type_
        $this.NumTimes = $NumTimes_
        $this.WithinSeconds = $WithinSeconds_
        $this.Context = $Context_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.NumTimes) -and ($this.NumTimes -ne "")) {
            $JsonData += @{ "numTimes" = $this.NumTimes }
        }
        if (($null -ne $this.WithinSeconds) -and ($this.WithinSeconds -ne "")) {
            $JsonData += @{ "withinSeconds" = $this.WithinSeconds }
        }
        if (($null -ne $this.Context) -and ($this.Context -ne "")) {
            $JsonData += @{ "context" = $this.Context }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaProfiledRefererHost {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("yes", "no")] [string] $Value

    MatchCriteriaProfiledRefererHost() { }

    MatchCriteriaProfiledRefererHost($Type_,
        [string] $Value_) {
        $this.Type = $Type_
        $this.Value = $Value_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Value) -and ($this.Value -ne "")) {
            $JsonData += @{ "value" = $this.Value }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaProtocols {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [ValidateSet("http", "https")] [string] $Protocols

    MatchCriteriaProtocols() { }

    MatchCriteriaProtocols($Type_,
        [string] $Operation_,
        [string] $Protocols_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Protocols = $Protocols_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Protocols) -and ($this.Protocols -ne "")) {
            $JsonData += @{ "protocols" = $this.Protocols }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaProxyIPAddresses {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] $IpGroups
    [ValidateNotNullOrEmpty()] $UserDefined
    [ValidateNotNullOrEmpty()] [bool] $MatchNonProxied

    MatchCriteriaProxyIPAddresses() { }

    MatchCriteriaProxyIPAddresses($Type_,
        [string] $Operation_,
        $IpGroups_,
        $UserDefined_,
        [bool] $MatchNonProxied_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.IpGroups = $IpGroups_
        $this.UserDefined = $UserDefined_
        $this.MatchNonProxied = $MatchNonProxied_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.IpGroups) -and ($this.IpGroups -ne "")) {
            $JsonData += @{ "ipGroups" = $this.IpGroups }
        }
        if (($null -ne $this.UserDefined) -and ($this.UserDefined -ne "")) {
            $JsonData += @{ "userDefined" = $this.UserDefined }
        }
        if (($null -ne $this.MatchNonProxied) -and ($this.MatchNonProxied -ne "")) {
            $JsonData += @{ "matchNonProxied" = $this.MatchNonProxied }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaSensitiveDictionarySearch {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("contains", "exact")] [string] $SearchMode
    [ValidateNotNullOrEmpty()] [string[]] $Dictionaries
    [ValidateNotNullOrEmpty()] [ValidateSet("url", "parameters", "headers", "urlsAndParameters", "responseContent", "nonNormalizedUrl")] [string[]] $Locations

    MatchCriteriaSensitiveDictionarySearch() { }

    MatchCriteriaSensitiveDictionarySearch($Type_,
        [string] $SearchMode_,
        [string[]] $Dictionaries_,
        [string[]] $Locations_) {
        $this.Type = $Type_
        $this.SearchMode = $SearchMode_
        $this.Dictionaries = $Dictionaries_
        $this.Locations = $Locations_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.SearchMode) -and ($this.SearchMode -ne "")) {
            $JsonData += @{ "searchMode" = $this.SearchMode }
        }
        if (($null -ne $this.Dictionaries) -and ($this.Dictionaries -ne "")) {
            $JsonData += @{ "dictionaries" = $this.Dictionaries }
        }
        if (($null -ne $this.Locations) -and ($this.Locations -ne "")) {
            $JsonData += @{ "locations" = $this.Locations }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaSignatures {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] $Signatures

    MatchCriteriaSignatures() { }

    MatchCriteriaSignatures($Type_,
        [string] $Operation_,
        $Signatures_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Signatures = $Signatures_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Signatures) -and ($this.Signatures -ne "")) {
            $JsonData += @{ "signatures" = $this.Signatures }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaSignaturesSignature {
    [ValidateNotNullOrEmpty()] [string] $Name
    [ValidateNotNullOrEmpty()] [bool] $IsUserDefined

    MatchCriteriaSignaturesSignature() { }

    MatchCriteriaSignaturesSignature([string] $Name_,
        [bool] $IsUserDefined_) {
        $this.Name = $Name_
        $this.IsUserDefined = $IsUserDefined_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Name) -and ($this.Name -ne "")) {
            $JsonData += @{ "name" = $this.Name }
        }
        if (($null -ne $this.IsUserDefined) -and ($this.IsUserDefined -ne "")) {
            $JsonData += @{ "isUserDefined" = $this.IsUserDefined }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaSourceGeolocation {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [string[]] $Values
    [ValidateNotNullOrEmpty()] [bool] $ApplyIfUnidentified
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation

    MatchCriteriaSourceGeolocation() { }

    MatchCriteriaSourceGeolocation($Type_,
        [string[]] $Values_,
        [bool] $ApplyIfUnidentified_,
        [string] $Operation_) {
        $this.Type = $Type_
        $this.Values = $Values_
        $this.ApplyIfUnidentified = $ApplyIfUnidentified_
        $this.Operation = $Operation_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Values) -and ($this.Values -ne "")) {
            $JsonData += @{ "values" = $this.Values }
        }
        if (($null -ne $this.ApplyIfUnidentified) -and ($this.ApplyIfUnidentified -ne "")) {
            $JsonData += @{ "applyIfUnidentified" = $this.ApplyIfUnidentified }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaSourceIPAddresses {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] $IPGroups
    [ValidateNotNullOrEmpty()] [string] $UserDefined

    MatchCriteriaSourceIPAddresses() { }

    MatchCriteriaSourceIPAddresses($Type_,
        [string] $Operation_,
        $IPGroups_,
        [string] $UserDefined_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.IPGroups = $IPGroups_
        $this.UserDefined = $UserDefined_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.IPGroups) -and ($this.IPGroups -ne "")) {
            $JsonData += @{ "ipGroups" = $this.IPGroups }
        }
        if (($null -ne $this.UserDefined) -and ($this.UserDefined -ne "")) {
            $JsonData += @{ "userDefined" = $this.UserDefined }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaTimeOfDay {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] $Restrictions

    MatchCriteriaTimeOfDay() { }

    MatchCriteriaTimeOfDay($Type_,
        $Restrictions_) {
        $this.Type = $Type_
        $this.Restrictions = $Restrictions_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Restrictions) -and ($this.Restrictions -ne "")) {
            $JsonData += @{ "restrictions" = $this.Restrictions }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaTimeOfDayRestriction {
    [ValidateNotNullOrEmpty()] [ValidateSet("sunday", "monday", "tuesday", "wednesdsay", "thursday", "friday", "saturday")] [string] $DayOfWeek
    [ValidateNotNullOrEmpty()] [string] $From
    [ValidateNotNullOrEmpty()] [string] $To

    MatchCriteriaTimeOfDayRestriction() { }

    MatchCriteriaTimeOfDayRestriction([string] $DayOfWeek_,
        [string] $From_,
        [string] $To_) {
        $this.DayOfWeek = $DayOfWeek_
        $this.From = $From_
        $this.To = $To_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.DayOfWeek) -and ($this.DayOfWeek -ne "")) {
            $JsonData += @{ "dayOfWeek" = $this.DayOfWeek }
        }
        if (($null -ne $this.From) -and ($this.From -ne "")) {
            $JsonData += @{ "from" = $this.From }
        }
        if (($null -ne $this.To) -and ($this.To -ne "")) {
            $JsonData += @{ "to" = $this.To }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaViolations {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("atLeastOne", "excludeAll")] [string] $Operation
    [ValidateNotNullOrEmpty()] [string[]] $Values

    MatchCriteriaViolations() { }

    MatchCriteriaViolations($Type_,
        [string] $Operation_,
        [string[]] $Values_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Values = $Values_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Values) -and ($this.Values -ne "")) {
            $JsonData += @{ "values" = $this.Values }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaWebPageResponseSize {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("lessOrEquals", "greaterThan")] [string] $Operation
    [ValidateNotNullOrEmpty()] [UInt32] $Value

    MatchCriteriaWebPageResponseSize() { }

    MatchCriteriaWebPageResponseSize($Type_,
        [string] $Operation_,
        [UInt32] $Value_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Value = $Value_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Value) -and ($this.Value -ne "")) {
            $JsonData += @{ "value" = $this.Value }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}

class MatchCriteriaWebPageResponseTime {
    [ValidateNotNullOrEmpty()] $Type
    [ValidateNotNullOrEmpty()] [ValidateSet("lessOrEquals", "greaterThan")] [string] $Operation
    [ValidateNotNullOrEmpty()] [UInt32] $Value

    MatchCriteriaWebPageResponseTime() { }

    MatchCriteriaWebPageResponseTime($Type_,
        [string] $Operation_,
        [UInt32] $Value_) {
        $this.Type = $Type_
        $this.Operation = $Operation_
        $this.Value = $Value_
    }

    [string] GetJson() {
        $JsonData = [ordered]@{ }

        if (($null -ne $this.Type) -and ($this.Type -ne "")) {
            $JsonData += @{ "type" = $this.Type }
        }
        if (($null -ne $this.Operation) -and ($this.Operation -ne "")) {
            $JsonData += @{ "operation" = $this.Operation }
        }
        if (($null -ne $this.Value) -and ($this.Value -ne "")) {
            $JsonData += @{ "value" = $this.Value }
        }

        $JsonData = $JsonData | ConvertTo-Json
        return $JsonData
    }
}
