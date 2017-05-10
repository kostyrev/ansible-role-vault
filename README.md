# vault

[![Build Status](https://travis-ci.org/kostyrev/ansible-role-vault.svg?branch=master)](https://travis-ci.org/kostyrev/ansible-role-vault)

Install and configure vault

Requirements
------------

None

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml) for a list and description of
variables used in this role.

Example Playbook
----------------

```yaml
- hosts: all
  vars:
    vault_config:
      listener:
        tcp:
          address: "{{ ansible_default_ipv4.address }}:8200"
          tls_disable: 1
      backend:
        consul:
          address: "127.0.0.1:8500"
          advertise_addr: "http://{{ ansible_default_ipv4.address }}:8200"
          path: vault
  roles:
    - kostyrevaa.vault
```

License
-------

BSD

Author Information
------------------

Inspired by:
- Brian Clark's [nomad role](https://github.com/bdclark/ansible-nomad)
