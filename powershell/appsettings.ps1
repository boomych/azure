[System.Reflection.Assembly]::LoadWithPartialName("System.Web.Extensions")
Function Parse-JsonFile {
    [CmdletBinding()]
    [OutputType('hashtable')]
    param (
        [Parameter(ValueFromPipeline)]
        $json
    )
    $parser = New-Object Web.Script.Serialization.JavaScriptSerializer
    $parser.MaxJsonLength = $json.length
    Write-Output -NoEnumerate $parser.Deserialize($json, @{}.GetType())
}


Select-AzureRmSubscription devops
$RGName = 'devops-arm-test'
$appName = 'esw-testfunc'
$predefinedSettings = @( 'FUNCTIONS_WORKER_RUNTIME', 
    'AzureWebJobsStorage',
    'FUNCTIONS_EXTENSION_VERSION',
    'WEBSITE_CONTENTAZUREFILECONNECTIONSTRING',
    'WEBSITE_CONTENTSHARE',
    'WEBSITE_NODE_DEFAULT_VERSION')

$webapp = Get-AzureRmWebApp -ResourceGroupName $RGName -Name $appName
$appSettings = $webapp.SiteConfig.AppSettings
$funcSettings = (Get-Content ./powershell/settings.json | Parse-JsonFile).Values
    

$funcSettings.keys





<#
$props = (Invoke-AzureResourceAction -ResourceGroupName $myResourceGroup `
 -ResourceType Microsoft.Web/sites/Config -Name $mySite/appsettings `
 -Action list -ApiVersion 2015-08-01 -Force).Properties

 $hash = @{}
 $props | Get-Member -MemberType NoteProperty | % { $hash[$_.Name] = $props.($_.Name) }

$hash.NewKey = "NewValue"
$hash.ExistingKey = "NewValue"

Switch-AzureMode AzureServiceManagement
Set-AzureWebsite -Name $mySite -AppSettings $hash
#>