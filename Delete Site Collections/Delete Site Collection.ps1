#Permanently Delete a SharePoint Site Collection.
# By: Bipul Raman

Clear-Host
# Replace the url "https://bipulraman-admin.sharepoint.com" and use your SharePoint administrative site.
Import-Module Microsoft.Online.Sharepoint.PowerShell
$credential = Get-credential
Connect-SPOService -url https://bipulraman-admin.sharepoint.com -Credential $credential

#This command will delete the SharePoint site collection. You must replace the url with your Sharepoint Online URL 
#Remove-SPOSite -Identity https://bipulraman.sharepoint.com/sites/bipuldemo -NoWait

#This command will pause the script for 20 seconds before proceeding.
#Start-Sleep -s 20

#This script will permanently delete the SharePoint site collection after it is sent to the SharePoint Site Recycle Bin. You must replace the url “https://contoso.sharepoint.com/sites/SiteCollectionName” with your Sharepoint Online URL and use your Site Collection Name that is to be permanently deleted for this script to work properly.
Remove-SPODeletedSite -Identity https://bipulraman.sharepoint.com/sites/test1
Remove-SPODeletedSite -Identity https://bipulraman.sharepoint.com/sites/team
Remove-SPODeletedSite -Identity https://bipulraman.sharepoint.com
