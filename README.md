# nephews-5 deployment using ansible

## warning : its recommended to utilize provided docker image do deploy nephews-5 since
some tasks my has unreversable artifacts on your host machine
for example running playbook setup_ssh_connection will delete known_hosts from your ssh client
    
## you can follow these minimal steps to deploy nephews-5 project
    
-----------------------------------------------
### 0- create required files 

* one inventory file before settting up ssh connection using ssh key (sample in /ansible/inventory)
put it in /inventoris and name it main_inventory

* one inventory file after for after setting up sshe connection (see sample in /ansible/roles/setup_ssh_connection/inventory)
put it in /inventoris and name it setup_ssh_inventory

* create ssh private and public keys and put them in .secrets, note that the their names must be ssh_key and ssk_key.pub,
u can use existing keys in that directory


---------------------------------------------------
### 2- run docker container
    
    docker compose up -d 


--------------------------------------------------
### 3- get inside the container and see make file instruction

    docker exec -it adl bash    
    cat ./Makefile


-------------------------------------------------
### 4- run playbooks against nodes

the container will automatically run the playbook 000_setup_container at startup, now you can run playbooks like charm, 
follow makefile order to deploy nephews-5 project


