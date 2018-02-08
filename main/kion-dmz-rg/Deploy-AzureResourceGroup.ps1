$resourceGroup =  "KionTest-RG"
$location = "eastus"
$templateFile = "azuredeploy.json"
$templateParameterFile = "azuredeploy.parameters.json"

#Remove-AzureRmResourceGroup -Name $resourceGroup -Force

#Login-AzureRmAccount 

New-AzureRmResourceGroup -Name $resourceGroup -Location $location -Force

# validate template before deployment
Test-AzureRmResourceGroupDeployment -ResourceGroupName $resourceGroup -TemplateFile $templateFile -TemplateParameterFile $templateParameterFile

# deploy the resource template
New-AzureRmResourceGroupDeployment -ResourceGroupName $resourceGroup -TemplateFile $templateFile -TemplateParameterFile $templateParameterFile 

$vnet = Get-AzureRmVirtualNetwork -Name "kion-dmz-vnet" -ResourceGroupName KionDMZ-RG
Get-AzureRmVirtualNetworkSubnetConfig -VirtualNetwork $vnet

Get-AzureRmPublicIpAddress -Name kion-jump-ip -ResourceGroupName KionDMZ-RG