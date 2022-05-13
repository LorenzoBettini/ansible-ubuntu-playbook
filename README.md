An example of Ansible Playbook for installing and configuring Ubuntu.

First install the requirements:

```
ansible-galaxy collection install -r requirements.yml
ansible-galaxy install -r requirements.yml
```

```
ansible-playbook -i local -v playbook-ubuntu.yml -K
```

or

```
ansible-playbook -i local -v playbook-kubuntu.yml -K
```

In case, you can skip a few steps, e.g., `--skip-tags latex`.

# Molecule testing

From the main directory

For linting:

```
molecule lint
```

For checking idempotency

```
molecule test
```

To build an environment, have the playbook run inside it, then be able to log in and observe the environment, run:

```
molecule converge
```

And then, to log into the environment:

```
molecule login
```

By default it executes the `playbook-ubuntu.yml`.
To execute the Kubuntu playbook, `playbook-kubuntu.yml` run molecule with the `MOLECULE_DISTRO` environment variable set like this:

```
MOLECULE_DISTRO="kubuntu" molecule ...
```
