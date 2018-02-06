$resourceGroup = "KionTest-RG"
$jumboxVMName = "kion-dmz-jumpbox"

$pip = Get-AzureRmPublicIpAddress -Name dmz-jumpbox-pip -ResourceGroupName $resourceGroup