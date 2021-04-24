$gp_ = Open-NetGPO '{{ base_domain }}\Default Domain Policy'

# Enable Powershell script block logging
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_logging_windows?view=powershell-7.1#using-the-registry
#New-Item 'HKLM:\Software\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging' -Force
#Set-ItemProperty 'HKLM:\Software\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging' -Name EnableScriptBlockLogging -Value "1"
#Set-GPPrefRegistryValue -Name "Default Domain Policy" -Context Computer -Key "HKLM\Software\Policies\Microsoft\Windows\PowerShell" -ValueName "ScriptBlockLogging" -Value "1" -Type String -Action Update

# Enable process creation logging
# https://getadmx.com/?Category=Windows_10_2016&Policy=Microsoft.Policies.Auditing::IncludeCmdLine
Set-GPPrefRegistryValue -Name "Default Domain Policy" -Context Computer -Key "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\Audit" -ValueName "ProcessCreationIncludeCmdLine_Enabled" -Value 1 -Type DWord -Action Create

# Save new rules
Save-NetGPO -GPOSession $gp_