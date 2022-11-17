FROM gitpod/workspace-python:latest

RUN pip install --upgrade pip

RUN pip install ansible yamllint ansible-lint

RUN pip install pip install git+https://github.com/ansible-community/molecule-docker.git
# We need to use molecule-docker from HEAD until the fix is released:
# https://github.com/ansible-community/molecule-docker/issues/184

# rsync is required by Molecule when building a Docker image from a custom file
# install-packages is a wrapper for `apt` that helps skip a few commands in the docker env.
RUN sudo install-packages \
    rsync \
