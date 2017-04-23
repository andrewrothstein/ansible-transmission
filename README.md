[![Build Status](https://travis-ci.org/andrewrothstein/ansible-transmission.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-transmission)
andrewrothstein.transmission
=========

Installs [Transmission](https://transmissionbt.com).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.transmission
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
