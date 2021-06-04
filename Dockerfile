FROM danielguerra/ubuntu-xrdp:latest

# Preinstallation
RUN apt update

# Setup OpenJDK
RUN apt -y install openjdk-11-jdk

# Setup OpenJDK
RUN apt -y install maven
    
# Prevent gpg: no valid OpenPGP data found.
RUN apt update

# Setup VSCode
WORKDIR /
RUN wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
RUN install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
RUN sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
RUN rm -f packages.microsoft.gpg
RUN apt install apt-transport-https
RUN apt update
RUN apt install code

# Setup Git
RUN apt -y install git

## Don't know why the technique is not working, https://stackoverflow.com/questions/58513266/how-to-install-multiple-extensions-in-vscode-using-command-line
## ---
# COPY vscode-extensions.txt /etc/profile.d/

# Startup Script
COPY startup.sh /etc/profile.d/