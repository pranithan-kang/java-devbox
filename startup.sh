# Setup Environment Variables
export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java))));
export M2_HOME=/opt/maven
export MAVEN_HOME=/opt/maven
export PATH=$PATH:$JAVA_HOME/bin:${M2_HOME}/bin;

# Preventing WSL Prompt
export DONT_PROMPT_WSL_INSTALL="TRUE";

# Install extensions
code --install-extension vscjava.vscode-java-pack --force;
code --install-extension gabrielbb.vscode-lombok --force;
code --install-extension redhat.fabric8-analytics --force;
code --install-extension eamodio.gitlens --force;
code --install-extension mtxr.sqltools --force;
code --install-extension mtxr.sqltools-driver-pg --force;

## Don't know why the technique is not working, https://stackoverflow.com/questions/58513266/how-to-install-multiple-extensions-in-vscode-using-command-line
## ---
# cat "vscode-extensions.txt" | while read extension || [[ -n $extension ]];
# do
#   code --install-extension $extension --force;
# done