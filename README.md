Gitlab Runner
=============

Ansible role to install GitLab Runner using the official GitLab repositories.

Requirements
------------

GitLab provide packages for the currently supported versions of Debian, Ubuntu, Mint, RHEL, Fedora, and CentOS. If you want to use the Docker executor, make sure to install Docker before using the Runner.

Role Variables
--------------
Normally this Ansible role needs no vars. But if you want to remove the runner, then run it with:

```
gitlab_runner_state: absent
```

Dependencies
------------
None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables
passed in as parameters) is always nice for users too:

    - hosts: build_agents
      roles:
         - { role: gitlab_runner }

License
-------

MIT

Author Information
------------------

Bas Meijer
@bbaassssiiee
