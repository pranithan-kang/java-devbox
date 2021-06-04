# Setup Environment Variables
export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java))));
export M2_HOME=/opt/maven
export MAVEN_HOME=/opt/maven
export PATH=$PATH:$JAVA_HOME/bin:${M2_HOME}/bin;

# Preventing WSL Prompt
export DONT_PROMPT_WSL_INSTALL="TRUE";

# Install useful extension
code --install-extension vscjava.vscode-java-pack
code --install-extension eamodio.gitlens
code --install-extension mtxr.sqltools
code --install-extension mtxr.sqltools-driver-pg