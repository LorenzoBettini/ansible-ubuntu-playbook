An example of Ansible Playbook for installing and configuring Ubuntu.

First install the requirements:

```
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

For local quick testing of single tasks, include them in `test-tasks-playbook.yml` and then:

```
ansible-playbook -i local -v test-tasks-playbook.yml -K
```

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

By default it uses the Docker image related to `ubuntu-default/Dockerfile`. To use a different Docker image run molecule with the `MOLECULE_DOCKER_DISTRO` environment variable set with the name of the subdirectory of the `docker` directory, e.g.:

```
MOLECULE_DOCKER_DISTRO="ubuntu-18.04" molecule ...
```
