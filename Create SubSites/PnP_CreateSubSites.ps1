# Script to create Subsites
# Requires PnP Package with SP Online Management Shell | Details @ https://github.com/SharePoint/PnP-PowerShell
# By: Bipul Raman

Clear-Host
Connect-PnPOnline -Url https://spointpratice.sharepoint.com/sites/Intranet
New-PnPWeb -Title "Blog" -Url "Blog" -Description "Blog" -Locale 1033 -Template "BLOG#0"
Disconnect-PnPOnline