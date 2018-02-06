$resourceGroup =  "KionTest-RG"
$location = "eastus"
$templateFile = "azuredeploy.json"
$templateParameterFile = "azuredeploy.parameters.json"

Remove-AzureRmResourceGroup -Name $resourceGroup

#Login-AzureRmAccount 

New-AzureRmResourceGroup -Name $resourceGroup -Location $location -Force

cls

New-AzureRmResourceGroupDeployment -ResourceGroupName $resourceGroup -TemplateFile $templateFile -TemplateParameterFile $templateParameterFile
