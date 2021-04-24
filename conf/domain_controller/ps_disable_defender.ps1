$gp_ = Open-NetGPO '{{ base_domain }}\Default Domain Policy'

# Disable Winodws Defender
# https://admx.help/?Category=Windows_10_2016&Policy=Microsoft.Policies.WindowsDefender::DisableAntiSpywareDefender
Set-GPPrefRegistryValue -Name "Default Domain Policy" -Context Computer -Key "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" -ValueName "DisableAntiSpyware" -Value 1 -Type DWord -Action Create

# Disable Real time protection
Set-GPPrefRegistryValue -Name "Default Domain Policy" -Context Computer -Key "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" -ValueName "DisableBehaviorMonitoring" -Value 1 -Type DWord -Action Create
Set-GPPrefRegistryValue -Name "Default Domain Policy" -Context Computer -Key "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" -ValueName "DisableOnAccessProtection" -Value 1 -Type DWord -Action Create
Set-GPPrefRegistryValue -Name "Default Domain Policy" -Context Computer -Key "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" -ValueName "DisableScanOnRealtimeEnable" -Value 1 -Type DWord -Action Create

Save-NetGPO -GPOSession $gp_