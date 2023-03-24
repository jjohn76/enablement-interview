#!/bin/bash

GITHUB_USERNAME="jjohn718"
CONFIG_HCL="config.hcl"
HASHICORP_VAULT_URL="vault-server.hashicorp.com"
GITHUB_USERNAME_EXPORT_REGEX="export GITHUB_USERNAME"
GITHUB_USERNAME_EXPORT="${GITHUB_USERNAME_EXPORT_REGEX}=${GITHUB_USERNAME}"

: '
Sets an environemnt variable with your github username in ~/root/.bash_profile.
Check to see if bash_profile already contains the "export GITHUB_USERNAME" value. 
If it does, we replace GITHUB_USERNAME. Otherwise we add to EOF as a new line.
'
if grep -Fqi "$GITHUB_USERNAME_EXPORT_REGEX" ~/.bash_profile
then
    #Replaces the content of an existing github username environment variable
    echo "~/.bash_profile already contains a Github Username environment variable. Replacing it..."
    sed -i "s/$GITHUB_USERNAME_EXPORT_REGEX.*/$GITHUB_USERNAME_EXPORT/I" ~/.bash_profile
else
    #Adds github username environment variable to a profile that doesn't contain one yet
    echo "~/.bash_profile does not contain a Github Username environment variable yet. Adding it..."
    echo -e "\n$GITHUB_USERNAME_EXPORT" >> ~/.bash_profile
fi

# Writes the hcl configurations to a file called config.hcl
cat <<EOF >$CONFIG_HCL
cluster_addr  = "https://<HOSTNAME>:8201"
api_addr      = "https://<HOSTNAME>:8200"
disable_mlock = true
EOF

# Replaces <HOSTNAME> with vault-server.hashicorp.com in config.hcl
sed -i "s/<HOSTNAME>/$HASHICORP_VAULT_URL/g" config.hcl