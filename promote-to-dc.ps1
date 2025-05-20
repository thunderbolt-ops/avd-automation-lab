
$domainName = "avdlab.local"
$netbiosName = "AVDLAB"
$safeModePwd = "YourP@ssw0rd123!"

# Install AD Domain Services
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

# Promote to Domain Controller
Install-ADDSForest `
    -DomainName $domainName `
    -DomainNetbiosName $netbiosName `
    -SafeModeAdministratorPassword (ConvertTo-SecureString $safeModePwd -AsPlainText -Force) `
    -Force:$true
