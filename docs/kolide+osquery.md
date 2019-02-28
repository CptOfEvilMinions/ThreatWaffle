# Kolide and OSQuery

## Doorman vs Kolide
This repo contains two branches which are Doorman and Kolide. Both are open source OSQuery fleet managers. Koide is used in the master branch.

## Setup Kolide OSQuery fleet manager
0. openssl rand -base64 32
0. Copy the output from above
0. vim group_vars/kolide and set:
    1. kolide_jwt_key to output from above
    1. Set username and password for Kolide, MySQL
0. vim group_vars/all and set
    1. timezone
    1. fleet_hostname
    1. base_domain
    1. Set information for certificate
    1. Slack (optional)
0. vim hosts
    1. Set management IP address under [kolide]
0. ansible-playbook -i hosts deploy_kolide.yml -u <ubuntu local user>
0. https://<Hostname/IP addr of Kolide>
    1. Setup through Kolide setup

    ## Deploy OSQuery agents

### Initial setup
0. Browse to https://<Hostname/IP addr of Kolide>
0. Select "Add new host" in top right
0. Select "Reveal secret" and copy the string
0. vim group_vars/agents
    1. set osquery_enroll_secret with string from Kolide

## Deploy Windows OSQuery agent
** Windows hosts must be WinRM ready for Ansible **
0. Copy contents of /etc/nginx/ssl/kolide.crt for Kolide server
0. mv conf/agents/certificate.example conf/agents/certificate.crt
0. vim conf/agents/certificate.crt and paste the contents from above
0. mv group_vars/win_agents.example group_vars/win_agents
0. vim group_vars/win_agents and set:
    1. ansible_user
    1. ansible_password
0. vim hosts
    1. Add hosts to win_agents
0. ansible-playbook -i hosts deploy_windows_osquery_agents.yml

## Deploy Linux OSQuery agent
0. vim hosts
    1. Add hosts to linux_agents
0.ansible-playbook -i hosts deploy_linux_osquery_agents.yml

# Resources/Sources
* https://github.com/kolide/fleet/tree/master/docs
* https://github.com/kolide/fleet/blob/master/docs/infrastructure/adding-hosts-to-fleet.md