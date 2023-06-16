$DeploymentName = 'ms-insight-governanceandsupport'
#Replace below text with your subscription id here to deploy these monitoring workbooks
$SubscriptionId = '735b6cda-b9b3-4dd7-aeeb-616a69dcbff7'
#Replace below text with your tenant id here to deploy
$TenantId = 'ce76d430-3619-4f25-954a-79dfb47ab948'
#Replace resource group name with your Resource Group Name
$Rg = 'arg-syd-platform-mgmt-workbooks'

Select-AzSubscription -SubscriptionName $SubscriptionId -Tenant $TenantId

New-AzResourceGroupDeployment -Name $DeploymentName `
    -ResourceGroupName $Rg `
    -TemplateFile '.\Identity\ms-insight-azure-ad-app-consent.json' `
    -Verbose

New-AzResourceGroupDeployment -Name $DeploymentName `
    -ResourceGroupName $Rg `
    -TemplateFile '.\Identity\ms-insight-keyvault.json' `
    -Verbose

New-AzResourceGroupDeployment -Name $DeploymentName `
    -ResourceGroupName $Rg `
    -TemplateFile '.\Identity\ms-insight-mfa-gaps-for-tenant.json' `
    -Verbose

    New-AzResourceGroupDeployment -Name $DeploymentName `
    -ResourceGroupName $Rg `
    -TemplateFile '.\Management\ms-insight-azure -policy-compliance.json' `
    -Verbose

    New-AzResourceGroupDeployment -Name $DeploymentName `
    -ResourceGroupName $Rg `
    -TemplateFile '.\Management\ms-insight-azure-backup-summary.json' `
    -Verbose

New-AzResourceGroupDeployment -Name $DeploymentName `
    -ResourceGroupName $Rg `
    -TemplateFile '.\Management\ms-insight-azure-hybrid-use-benefit.json' `
    -Verbose

    New-AzResourceGroupDeployment -Name $DeploymentName `
    -ResourceGroupName $Rg `
    -TemplateFile '.\Management\ms-insight-azure-inventory.json' `
    -Verbose

New-AzResourceGroupDeployment -Name $DeploymentName `
    -ResourceGroupName $Rg `
    -TemplateFile '.\Management\ms-insight-azure-solution-outage.json' `
    -Verbose

New-AzResourceGroupDeployment -Name $DeploymentName `
    -ResourceGroupName $Rg `
    -TemplateFile '.\Management\ms-insight-azure-well-architected-framework.json' `
    -Verbose

New-AzResourceGroupDeployment -Name $DeploymentName `
    -ResourceGroupName $Rg `
    -TemplateFile '.\Management\ms-insight-change-tracking.json' `
    -Verbose

New-AzResourceGroupDeployment -Name $DeploymentName `
    -ResourceGroupName $Rg `
    -TemplateFile '.\Management\ms-insight-reservation-consumption.json' `
    -Verbose

New-AzResourceGroupDeployment -Name $DeploymentName `
    -ResourceGroupName $Rg `
    -TemplateFile '.\Network&Security\ms-insight-active-alerts.json' `
    -Verbose

New-AzResourceGroupDeployment -Name $DeploymentName `
    -ResourceGroupName $Rg `
    -TemplateFile '.\Network&Security\ms-insight-azure-app-gateway.json' `
    -Verbose

New-AzResourceGroupDeployment -Name $DeploymentName `
    -ResourceGroupName $Rg `
    -TemplateFile '.\Network&Security\ms-insight-azure-ddos-summary.json' `
    -Verbose

New-AzResourceGroupDeployment -Name $DeploymentName `
    -ResourceGroupName $Rg `
    -TemplateFile '.\Network&Security\ms-insight-azure-firewall.json' `
    -Verbose

New-AzResourceGroupDeployment -Name $DeploymentName `
    -ResourceGroupName $Rg `
    -TemplateFile '.\Network&Security\ms-insight-azure-network-security.json' `
    -Verbose

    New-AzResourceGroupDeployment -Name $DeploymentName `
    -ResourceGroupName $Rg `
    -TemplateFile '.\Network&Security\ms-insight-azure-network-watcher.json' `
    -Verbose

New-AzResourceGroupDeployment -Name $DeploymentName `
    -ResourceGroupName $Rg `
    -TemplateFile '.\Network&Security\ms-insight-vulnerability-assessment.json' `
    -Verbose