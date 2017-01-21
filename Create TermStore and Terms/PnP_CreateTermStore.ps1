# Script to create TermGroup, TermSets and Terms in TermStore
# Requires PnP Package with SP Online Management Shell | Details @ https://github.com/SharePoint/PnP-PowerShell
# By: Bipul Raman

Clear-Host
Connect-PnPOnline -Url https://bipulraman.sharepoint.com
#Export-PnPTermGroupToXml -Out D:\MMSoutput.xml
Import-PnPTermGroupFromXml -Path .\PnP_TermStoreData.xml
Disconnect-PnPOnline