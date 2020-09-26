# ThreatWaffle
Threat hunting repo for my independent study on threat hunting with OSQuery.


# Setup infrastructure
1. [Setup Windows Domain Controller](docs/windows.md)
1. [Setup domain user](docs/windows.md)
1. [Setup Kolide OSQuery fleet manager](docs/kolide+osquery.md)
1. [Deploy Windows OSQuery agent](docs/kolide+osquery.md)
1. [Deploy Linux OSQuery agent](docs/kolide+osquery.md)
1. [Caldera with Ansible](docs/caldera.md)

## Supported versions
* Ubuntu Server 20.04 64-bit
* Ansible v2.10+
* Osquery 4.4.0
* Kolide 3.1.0
* Elastic stack v7.9.0
* Graylog 3.3.0

# To do:
* Set up Mac OSX deployment for OSQuery
* Docker setup
* Add DNS setup to DC

## References
### Osquery
* [Downloading & Installing Osquery](https://osquery.io/downloads/official/4.5.0)
* []()
* []()

### Kolide
* [Kolide Fleet releases](https://github.com/kolide/fleet/releases)
* []()
* []()
* []()

### Ansible
* [apt_key](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/apt_key_module.html)
* [apt_repository](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/apt_repository_module.html)
* [Conditionals](https://docs.ansible.com/ansible/latest/user_guide/playbooks_conditionals.html#id18)
* [win_package](https://docs.ansible.com/ansible/2.7/modules/win_package_module.html#win-package-module)
* [ansible.windows.win_template](https://docs.ansible.com/ansible/latest/collections/ansible/windows/win_template_module.html)
* [ansible.windows.win_get_url](https://docs.ansible.com/ansible/latest/collections/ansible/windows/win_get_url_module.html)
* [ansible.builtin.set_fact](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/set_fact_module.html)
* [Controlling where tasks run: delegation and local actions](https://docs.ansible.com/ansible/latest/user_guide/playbooks_delegation.html)
* [env](https://docs.ansible.com/ansible/2.9_ja/plugins/lookup/env.html)
* [ansible.builtin.uri](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/uri_module.html)
* [Interactive input: prompts](https://docs.ansible.com/ansible/latest/user_guide/playbooks_prompts.html)
* [community.crypto.get_certificate – Get a certificate from a host:port](https://docs.ansible.com/ansible/latest/collections/community/crypto/get_certificate_module.html)
* []()
* []()
* []()
* []()
* []()

### Graylog
* [Graylog - Ubuntu installation](https://docs.graylog.org/en/4.0/pages/installation/os/ubuntu.html)
* [Graylog - NGINX](https://docs.graylog.org/en/4.0/pages/configuration/web_interface.html?highlight=nginx#nginx)
* []()
* []()
* []()
* []()

### ELK
* [winlogbeat.yml](https://github.com/CptOfEvilMinions/BlogProjects/blob/master/sysmon-winlogbeat-communityid/conf/winlogbeat/winlogbeat.yml)
* []()
* []()

### NGINX
* [Redirect HTTP to HTTPS in Nginx](https://serversforhackers.com/c/redirect-http-to-https-nginx)
* [Make nginx to pass hostname of the upstream when reverseproxying](https://serverfault.com/questions/598202/make-nginx-to-pass-hostname-of-the-upstream-when-reverseproxying)
* []()
* []()
* []()
* []()
