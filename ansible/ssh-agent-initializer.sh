if [ -z "$SSH_AUTH_SOCK" ]; then
    echo "\$SSH_AUTH_SOCK is empty. Running a command..."
    eval $(ssh-agent -s)
else
    echo "\$SSH_AUTH_SOCK is already set."
fi

ssh-add /secrets/ssh_key
