
###Check web.config thumbprints###

$CommonServicePath= $env:LDMS_HOME + "LANDesk\ManagementSuite\Core\CommonServices\web.config"
$Console= $env:LDMS_HOME + "landesk\managementsuite\core\console\web.config"
$IdentityServer =  $env:SystemDrive + "\Program Files\LANDESK\Identity Server\web.config"
$remote= $env:SystemDrive + "\inetpub\wwwroot\LANDesk\LDMS\web.config"
$sam= $env:LDMS_HOME + "LANDesk\SAM\samserver\web.config"
$samWebConsole=  $env:LDMS_HOME + "LANDesk\SAM\samwebconsole\web.config"


$env:LDMS_HOME
$env:computername
$env:SystemDrive

Write-host ("CommonService")
$contentCommonService= Get-Content $CommonServicePath
$contentCommonService | select-string -Pattern "add key"


Write-host ("Console")
$contentCommonService= Get-Content $Console
$contentCommonService | select-string -Pattern "add key"

Write-host ("IdentityServer")
$contentCommonService= Get-Content $IdentityServer
$contentCommonService | select-string -Pattern "add key"

Write-host ("Remote")
$contentCommonService= Get-Content $remote
$contentCommonService | select-string -Pattern "add key"

Write-host ("SAM")
$contentCommonService= Get-Content $sam
$contentCommonService | select-string -Pattern "add key"

Write-host ("SAMweb")
$contentCommonService= Get-Content $samWebConsole
$contentCommonService | select-string -Pattern "add key"