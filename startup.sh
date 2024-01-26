#!/bin/sh
eval $(ssh-agent -s)
echo "SSH_AUTH_SOCK=$SSH_AUTH_SOCK" >> /tmp/ssh-agent
echo "SSH_AGENT_PID=$SSH_AGENT_PID" >> /tmp/ssh-agent
make 0-setup-container
/bin/sh
