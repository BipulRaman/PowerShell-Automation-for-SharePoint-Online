# PowerShell-Automations-for-SharePoint-Online
PowerShell based Automations for bulk operations in SharePoint Online using Microsoft PnP Packages. Bulk data is stored in XML or CSV files as per required. 

### Prerequisites ###
In order to generate the Cmdlet help you need to have the Windows Management Framework v4.0 installed, which you can download from http://www.microsoft.com/en-us/download/details.aspx?id=40855

# Setup Environment #

## Using Setup files ##
You can download setup files from https://github.com/officedev/pnp-powershell/releases. These files will up be updated on a monthly basis.

## Using the Windows Management Framework ##

If you main OS is Windows 10, you can run the following commands to install the PowerShell cmdlets:

_SharePoint Online_
```powershell
Install-Module SharePointPnPPowerShellOnline -AllowClobber
```

## SETTINGS UP CREDENTIALS ##
In those situation where you don't want to be prompted for a username and password, you could hardcode your credentials in your PowerShell script. However, while this is inflexible, it is also very insecure. 

We propose that you use the Windows Credential manager instead, which has a secure and managable storage concept that the PnP PowerShell cmdlets can use.

## Setup ##
Open your control panel, and open the Credential Manager.

1. Select **Windows Credentials**
2. Add a new **Generic** credential

### Steps: ###

1. Enter the URL of your site you want to setup a credential for. You can use just your full tenant address (e.g. "https://yourtenant.sharepoint.com", or you can be more specific by entering a more complete URL, alike "https://yourtenant.sharepoint.com/sites/yoursite" or only create a credential for that site.
2. Enter the username and password to use for that url

From that moment you can simply use the Connect-PnPOnline cmdlet to connect to your site as follows:

```powershell
Connect-PnPOnline -Url https://yourtenant.sharepoint.com
```

You will not be prompted for credentials.

You can mix and match the credential manager entries to use specific credentials for other sites.
