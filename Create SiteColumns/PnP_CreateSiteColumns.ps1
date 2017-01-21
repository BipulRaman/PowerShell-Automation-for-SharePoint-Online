# Script to create SiteColumns in a a group
# Requires PnP Package with SP Online Management Shell | Details @ https://github.com/SharePoint/PnP-PowerShell
# By: Bipul Raman

Clear-Host
Connect-PnPOnline -Url https://spointpratice.sharepoint.com/sites/Intranet
#Add-PnPField -DisplayName "Test Location" -InternalName "TestLocation" -Type Choice -Group "Test" -AddToDefaultView -Choices "Delhi","Mumbai","Kolkata", "Chennai"

[XML]$ImportXML = Get-Content ".\4_SiteColumn.xml"
#Add-PnPFieldFromXml -FieldXml $ImportXML

Foreach ($field in $ImportXML.Elements.Field)
{
    Add-PnPFieldFromXml -FieldXml $field.OuterXml
}

Disconnect-PnPOnline