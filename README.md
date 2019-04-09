# Ansible Role: gcoop-libre.git-bare-repos

An Ansible Role that create git bare repositories on remote host and push from local.

## Requirements

The role require ``git`` package and local git repositories.

Role Variables
--------------

Available variables with default values (see ``defaults/main.yml``)

Dependencies
------------

None.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

```yaml

---
- hosts: remote-git-server
  become: yes

  roles:
    - role: gcoop-libre.git-bare-repos
      git_repositories:
        - name: ansible-role-test.git
          local_dir: /home/git/ansible-roles-test/
        - name: ansible-test.git
          local_dir: /home/git/ansible-test/
      git_public_keys_files:
        - '~/.ssh/id_rsa.pub'
```

## License

GNU General Public License, GPLv3

## Author Information

This role was created in 2019 by [Osiris Alejandro Gomez](https://osiux.com/), worker cooperative of [gcoop Cooperativa de Software Libre](http://www.gcoop.coop/).
