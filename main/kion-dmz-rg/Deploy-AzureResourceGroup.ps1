$resourceGroup =  "KionTest-RG"
$location = "eastus"
$templateFile = "azuredeploy.json"
$templateParameterFile = "azuredeploy.parameters.json"

#Login-AzureRmAccount 

New-AzureRmResourceGroup -Name $resourceGroup -Location $location -Force

New-AzureRmResourceGroupDeployment -ResourceGroupName $resourceGroup -TemplateFile $templateFile -TemplateParameterFile $templateParameterFile

