# Script to create TermGroup, TermSets and Terms in TermStore
# Requires PnP Package with SP Online Management Shell | Details @ https://github.com/SharePoint/PnP-PowerShell
# By: Bipul Raman .

Clear-Host
Connect-PnPOnline -Url https://bipulraman.sharepoint.com

Add-PnPWebPartToWikiPage -ServerRelativePageUrl "/SitePages/TestPage.aspx" -Path "D:\SearchBoxScript.webpart" -Row 1 -Column 1
#Add-PnPWebPartToWikiPage -ServerRelativePageUrl "/SitePages/TestPage.aspx" -Path "D:\Bot.webpart" -Row 1 -Column 1
Disconnect-PnPOnline