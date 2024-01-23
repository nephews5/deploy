000-config-host-ssh-client:
	ansible-playbook playbooks/000_config_host_ssh_client.yml

001-setup-ssh-connection:
	ansible-playbook -i roles/setup_ssh_connection/inventory playbooks/001_setup_ssh_connection.yml

002-hardening:
	ansible-playbook -i inventory playbooks/002_hardening.yml --become --become-user root

all: 000-config-host-ssh-client   001-setup-ssh-connection   002-hardening
