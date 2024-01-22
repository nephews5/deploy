config-host-ssh-client:
        ansible-playbook playbooks/000_config_ssh.yml

setup-ssh-connection:
        ansible-playbook -i roles/setup_ssh_connection/inventory playbooks/001_setup_ssh_connection.yml

hardening:
        ansible-playbook -i inventory playbooks/002_hardening.yml --become --become-user root

all: config-host-ssh-client setup-ssh-connection hardening

