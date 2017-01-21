# Script to create TermGroup, TermSets and Terms in TermStore
# Requires PnP Package with SP Online Management Shell | Details @ https://github.com/SharePoint/PnP-PowerShell
# By: Bipul Raman

Clear-Host
Connect-PnPOnline -Url https://spointpratice.sharepoint.com/sites/Intranet

Import-Csv .\Pnp_CreatePageData.csv | % {
Add-PnPPublishingPage -PageName $_.PageName -Title $_.Title -PageTemplateName $_.PageTemplateName
Write-Host $_.PageName has been created in Page Library
} 

Disconnect-PnPOnline