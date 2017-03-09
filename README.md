ansible-demo
============

Ansible (Tower) demo for Conclusion Xforce 

Requirements
------------

- Ansible server (preferably Ansible Tower)
- inventory with groups called "nagios-server" and "nagios-clients"
- Rhel 7.x server(s) minimal install with devops user accepting ssh keys attached to "nagios-server"
 
Serving as Nagios clients, make sure they are grouped in inventory to "nagios-clients":
- Windows 2012 server(s) with Powershell 3.x
- Rhel 7.x server(s) minimal install with devops user accepting ssh keys

Example Playbook
----------------
```
---
# Playbook that configures Nagios XI server for centralized monitoring

- hosts: nagios-server
  become: true

  roles:
    - xi_php
    - xi_server_mariadb
    - xi_server_fullinstall
    - xi_aide

---
Playbook that configures Nagios clients (either update or new install) of Nagios Cross Platform Agent (NCPA)
- hosts: nagios-clients
  become: true


  roles:
    - nagiosrepo
- ncpa
```
License
-------

BSD

Author Information
------------------

See http://xforce.conclusion.nl/
