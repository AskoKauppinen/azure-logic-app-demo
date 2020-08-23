param ($accountName,$rgName)


Connect-AzAccount

Get-AzSubscription -SubscriptionName $accountName | Set-AzContext -Name "Context" -Force

New-AzResourceGroupDeployment -ResourceGroupName $rgName -TemplateFile ".\azure_logic_app.json" -TemplateParameterFile ".\azure_logic_app.parameters.json"
