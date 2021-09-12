FROM registry.fedoraproject.org/fedora-minimal:34

ENV user=anaconda
ENV group=anaconda
ENV UID=1234
ENV GID=1234

ENV ANACONDAURL=https://repo.anaconda.com/archive/Anaconda3-2021.05-Linux-x86_64.sh
ENV JUPYTERPORT=8889


# Generic dependencies
RUN touch /etc/dnf/dnf.conf
RUN microdnf -y update && microdnf -y install iproute && microdnf clean all

# Create user and group
RUN groupadd --gid ${GID} ${group} &&  useradd -u ${UID} -g ${GID} -d /home/${user} ${user}

# /usr/local/bin is empty in fedora-minimal. Since it is always in PATH we use 
# it to ensure our installed anaconda binaries are always found
RUN rmdir /usr/local/bin
RUN ln -s /home/${user}/.local/bin /usr/local/bin

# Folder to keep jupyter notebooks 
RUN mkdir /home/${user}/notebooks

# Include example notebook
COPY RecurrentNetworks.ipynb /home/${user}/notebooks
RUN chown -R ${user}:${group} /home/${user}

# Install anaconda
USER ${user}:${group}
WORKDIR /home/${user}
RUN curl -sL ${ANACONDAURL} -o ./anaconda3_installer.sh && chmod +x ./anaconda3_installer.sh
RUN ./anaconda3_installer.sh -b -p /home/${user}/.local && rm -f ./anaconda3_installer.sh


# Additional packages
RUN  yes "" | /home/${user}/.local/bin/conda install keras

CMD jupyter-notebook --ip `ip route list scope link | awk '{ print $7 }'` --port=${JUPYTERPORT} --no-browser
EXPOSE ${JUPYTERPORT}

