# Caldera

## Ansible setup - prod
0. vim hosts and set [caldera]
0. mv group_vars/all.example group_vars/all
0. vim group_vars/all and set:
    1. base_domain
    1. caldera_pass
0. Create a DNS entry on your DNS server for {{ caldera_pass }}.{{ base_domain }}
0. ansible-playbook -i hosts deploy_caldera.yml -u <user>