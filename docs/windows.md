# Windows 

## Setup Windows Domain Controller
### Setup domain
0. mv group_vars/all.example group_vars/all
0. Vim group_vars/all and set
    1. base_domain  
0. mv group_vars/win_dc.example group_vars/win_dc
0. vim group_vars/win_dc and set:
    1. ad_domain_name(by default set base_domain)
    1. ad_safe_mode_password
0. vim group_vars/windows and set :
    1. asnsible_user
    1. ansible_password
0. vim hosts set:
    1. ip addr for [win_dc]
0. ansible-playbook -i hosts deploy_windows_dc.yml
0. Shutdown and create snapshot

### Setup domain user
0. Login into Windows DC
0. Open server manager
0. Select “Tools” then “Active Directory Users and Computers”
0. Select “Users” on the left
0. Select “Acton” then “New User”
    1. User info
        2. Enter “Sherlock” for Firstname
        2. Enter “Holmes” for Last Name
        2. Enter “Sholmes” for logon
    1. Password
        2. Enter a password for user
        2. UNcheck “User must change password at next logon”
0. Shutdown and create snapshot