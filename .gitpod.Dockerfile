FROM gitpod/workspace-python:latest

RUN pip install --upgrade pip

RUN pip install ansible yamllint ansible-lint

RUN pip install pip install git+https://github.com/ansible-community/molecule-docker.git
# We need to use molecule-docker from HEAD until the fix is released:
# https://github.com/ansible-community/molecule-docker/issues/184

# rsync is required by Molecule when building a Docker image from a custom file
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        rsync \
    && apt-get clean