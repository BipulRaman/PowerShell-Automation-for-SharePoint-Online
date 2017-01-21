#Create multiple SPO Sites from CSV file.
# By: Bipul Raman

Clear-Host
# Replace the url "https://bipulraman-admin.sharepoint.com" and use your SharePoint administrative site. 
Import-Module Microsoft.Online.Sharepoint.PowerShell 
$credential = Get-credential 

Connect-SPOService -url https://bipulraman-admin.sharepoint.com -Credential $credential 

#The following command will import the content of the CSV, and create a site collection per row. 
Import-Csv .\NewSPOSites.csv | % {New-SPOSite -Owner $_.Owner -StorageQuota $_.StorageQuota -Url $_.Url -NoWait -ResourceQuota $_.ResourceQuota -Template $_.Template -Title $_.Name} 