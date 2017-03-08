ansible-demo
============

Ansible (Tower) demo for Conclusion Xforce 

Requirements
------------

- Ansible server (preferably Ansible Tower)
- inventory with groups called "nagios-servers" and "nagios-clients"
- Windows 2012 server(s) with Powershell 3.x
- Rhel 7.x server for Nagios XI attached to "nagios-servers"
- RHEL 7.x server(s) minimal install with devops user accepting ssh keys

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: jvandermeulen.ansible-demo }

License
-------

BSD

Author Information
------------------

See http://xforce.conclusion.nl/
