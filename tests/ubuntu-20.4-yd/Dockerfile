FROM ubuntu:20.04
ENV IN_DOCKER 1
RUN apt update && apt install -y git sudo curl

COPY vparts/install_os_base_tools.sh /src/vparts/install_os_base_tools.sh
RUN  bash /src/vparts/install_os_base_tools.sh

RUN sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /usr/local/bin


COPY vparts/install_yd_base_tools.tasks.yml /src/vparts/install_yd_base_tools.tasks.yml
RUN  task install-all -o prefixed -t /src/vparts/install_yd_base_tools.tasks.yml


COPY vparts/install_conda_mini.tasks.yml /src/vparts/install_conda_mini.tasks.yml
RUN  task install-all -o prefixed -t /src/vparts/install_conda_mini.tasks.yml


COPY vparts/install_docker_base.tasks.yml /src/vparts/install_docker_base.tasks.yml
RUN  task install-all -o prefixed -t /src/vparts/install_docker_base.tasks.yml


COPY vparts/install_yd_base_zsh.tasks.yml /src/vparts/install_yd_base_zsh.tasks.yml
RUN  task install-all -o prefixed -t /src/vparts/install_yd_base_zsh.tasks.yml


