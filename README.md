## follow these steps to deploy nephews-5 project

0- write your nodes data (ip, user, categories) in inventory file
1- setup ssh connection (read setup ssh connection Docs in /ansible/roles/setup_ssh_connection/README.md)
2- apply hardening roles to all nodes
3- run deploy_nexus role on nexus node
4- run deploy_wordpress role on application node
