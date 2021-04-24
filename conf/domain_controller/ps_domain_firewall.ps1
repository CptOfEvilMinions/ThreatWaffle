$gp_ = Open-NetGPO '{{ base_domain }}\Default Domain Policy'

# Allow ICMP requests
New-NetFirewallRule -Name 'ICMPv4' -DisplayName 'ICMPv4' -Description 'Allow ICMPv4' -Profile Any -Direction Inbound -Action Allow -Protocol ICMPv4 -Program Any -LocalAddress Any -RemoteAddress Any -GPOSession $gp_

# Allow Remote Desktop
# https://www.powershellmagazine.com/2013/02/21/pstip-enabling-remote-desktop-access-firewall-rules-in-windows-8-and-windows-server-2012/
# https://theitbros.com/how-to-remotely-enable-remote-desktop-using-powershell/
New-NetFirewallRule -Name "RDP-In" -DisplayName "RDP-In" -Description 'Allow Remote Desktop' -Enabled True -Profile Any -Direction Inbound -Action Allow -RemoteAddress Any -Protocol TCP -LocalPort 3389 -Program System -GPOSession $gp_


# Allow SMB
# https://4sysops.com/archives/protect-smb-with-windows-firewall-against-attacks/
New-NetFirewallRule -Name "Allow SMB" -DisplayName "Allow SMB" -Enabled True -Profile Any -Direction Inbound -Action Allow -RemoteAddress Any -Protocol TCP -LocalPort 445 -Program System -GPOSession $gp_

# Allow WinRM
New-NetFirewallRule -Name "WINRM-HTTP-In-TCP" -DisplayName "Windows Remote Management (HTTP-In)" -Description "Inbound rule for Windows Remote Management via WS-Management. [TCP 5985]" -Group "Windows Remote Management" -Program "System" -Protocol TCP -LocalPort "5985" -Action Allow -Profile Any -GPOSession $gp_
New-NetFirewallRule -Name "WINRM-HTTPS-In-TCP" -DisplayName "Windows Remote Management (HTTPS-In)" -Description "Inbound rule for Windows Remote Management via WS-Management. [TCP 5986]" -Group "Windows Remote Management" -Program "System" -Protocol TCP -LocalPort "5986" -Action Allow -Profile Any -GPOSession $gp_

# Save new rules
Save-NetGPO -GPOSession $gp_

