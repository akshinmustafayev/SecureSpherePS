function Invoke-Initialization {
    # Required to fix error with:
    # The underlying connection was closed: 
    # Could not establish trust relationship for the SSL/TLS secure channel.
    #
    # Soultion Source: https://stackoverflow.com/questions/46187640/could-not-establish-trust-relationship-for-the-ssl-tls-secure-channel-with-invok
    
    Add-Type @"
    using System.Net;
    using System.Security.Cryptography.X509Certificates;
    public class TrustAllCertsPolicy : ICertificatePolicy {
        public bool CheckValidationResult(
            ServicePoint srvPoint, X509Certificate certificate,
            WebRequest request, int certificateProblem) {
            return true;
        }
    }
"@

    # Execute TrustAllCertsPolicy
    [System.Net.ServicePointManager]::CertificatePolicy = New-Object TrustAllCertsPolicy

    # Required to force protocol TLS 1.2
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
}
