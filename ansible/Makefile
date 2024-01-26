0-setup-container:
	ansible-playbook playbooks/000_setup_container.yml

1-ping-all-nodes:
	ansible -i roles/setup_ssh_connection/inventory -m ping all
	
2-setup-ssh-connection:
	ansible-playbook -i roles/setup_ssh_connection/inventory playbooks/001_setup_ssh_connection.yml

3-hardening:
	ansible-playbook -i inventory playbooks/002_hardening.yml --become --become-user root

4-deploy-app:
	ansible-playbook -i inventory playbooks/003_deploy_app.yml --become --become-user root

all: 0-setup-container 1-ping-all-nodes 2-setup-ssh-connection 3-hardening 4-deploy-app

