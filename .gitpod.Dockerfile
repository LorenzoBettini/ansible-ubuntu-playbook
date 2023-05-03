FROM gitpod/workspace-python-3.10:2023-01-02-17-16-30

RUN pip install --upgrade pip

RUN pip install ansible molecule "molecule-plugins[docker]" "ansible-compat<4" yamllint ansible-lint

# rsync is required by Molecule when building a Docker image from a custom file
# install-packages is a wrapper for `apt` that helps skip a few commands in the docker env.
RUN sudo install-packages \
    rsync
