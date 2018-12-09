Select-AzureRmSubscription devops
$RGName = 'devops-arm-test'
$appName = 'esw-testfunc'
$predefinedSettings =@( 'FUNCTIONS_WORKER_RUNTIME', 
                        'AzureWebJobsStorage',
                        'FUNCTIONS_EXTENSION_VERSION',
                        'WEBSITE_CONTENTAZUREFILECONNECTIONSTRING',
                        'WEBSITE_CONTENTSHARE',
                        'WEBSITE_NODE_DEFAULT_VERSION')

$funcSettings = Get-Content ./settings.json | ConvertFrom-Json

$webapp = Get-AzureRmWebApp -ResourceGroupName $RGName -Name $appName

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