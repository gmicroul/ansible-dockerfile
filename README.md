# ansible-dockerfile

sudo podman run -it ansible


root@e49ece7c8f4d:/# ansible --version 

ansible [core 2.16.1]

  config file = None
  
  configured module search path = ['/root/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  
  ansible python module location = /usr/local/lib/python3.10/dist-packages/ansible
  
  ansible collection location = /root/.ansible/collections:/usr/share/ansible/collections
  
  executable location = /usr/local/bin/ansible
  
  python version = 3.10.12 (main, Nov 20 2023, 15:14:05) [GCC 11.4.0] (/usr/bin/python3)
  
  jinja version = 3.1.2
  
  libyaml = True
  
root@e49ece7c8f4d:/# 


root@e49ece7c8f4d:/# ansible 

usage: ansible [-h] [--version] [-v] [-b] [--become-method BECOME_METHOD] [--become-user BECOME_USER]

               [-K | --become-password-file BECOME_PASSWORD_FILE] [-i INVENTORY] [--list-hosts] [-l SUBSET] [-P POLL_INTERVAL] [-B SECONDS] [-o]
               
               [-t TREE] [--private-key PRIVATE_KEY_FILE] [-u REMOTE_USER] [-c CONNECTION] [-T TIMEOUT] [--ssh-common-args SSH_COMMON_ARGS]
               
               [--sftp-extra-args SFTP_EXTRA_ARGS] [--scp-extra-args SCP_EXTRA_ARGS] [--ssh-extra-args SSH_EXTRA_ARGS]
               
               [-k | --connection-password-file CONNECTION_PASSWORD_FILE] [-C] [-D] [-e EXTRA_VARS] [--vault-id VAULT_IDS]
               
               [-J | --vault-password-file VAULT_PASSWORD_FILES] [-f FORKS] [-M MODULE_PATH] [--playbook-dir BASEDIR] [--task-timeout TASK_TIMEOUT]
               
               [-a MODULE_ARGS] [-m MODULE_NAME]
               
               pattern

ansible: error: the following arguments are required: pattern
 
usage: ansible [-h] [--version] [-v] [-b] [--become-method BECOME_METHOD] [--become-user BECOME_USER]

               [-K | --become-password-file BECOME_PASSWORD_FILE] [-i INVENTORY] [--list-hosts] [-l SUBSET] [-P POLL_INTERVAL] [-B SECONDS] [-o]
               
               [-t TREE] [--private-key PRIVATE_KEY_FILE] [-u REMOTE_USER] [-c CONNECTION] [-T TIMEOUT] [--ssh-common-args SSH_COMMON_ARGS]
               
               [--sftp-extra-args SFTP_EXTRA_ARGS] [--scp-extra-args SCP_EXTRA_ARGS] [--ssh-extra-args SSH_EXTRA_ARGS]
               
               [-k | --connection-password-file CONNECTION_PASSWORD_FILE] [-C] [-D] [-e EXTRA_VARS] [--vault-id VAULT_IDS]
               
               [-J | --vault-password-file VAULT_PASSWORD_FILES] [-f FORKS] [-M MODULE_PATH] [--playbook-dir BASEDIR] [--task-timeout TASK_TIMEOUT]
               
               [-a MODULE_ARGS] [-m MODULE_NAME]
               
               pattern

Define and run a single task 'playbook' against a set of hosts

positional arguments:
  
  pattern               host pattern

options:
  
  --become-password-file BECOME_PASSWORD_FILE, --become-pass-file BECOME_PASSWORD_FILE
  
                        Become password file
  
  --connection-password-file CONNECTION_PASSWORD_FILE, --conn-pass-file CONNECTION_PASSWORD_FILE
  
                        Connection password file
  
  --list-hosts          outputs a list of matching hosts; does not execute anything else
 
  --playbook-dir BASEDIR
  
                        Since this tool does not use playbooks, use this as a substitute playbook directory. This sets the relative path for many
                        
                        features including roles/ group_vars/ etc.
  
  --task-timeout TASK_TIMEOUT
  
                        set task timeout limit in seconds, must be positive integer.
  
  --vault-id VAULT_IDS  the vault identity to use. This argument may be specified multiple times.
  
  --vault-password-file VAULT_PASSWORD_FILES, --vault-pass-file VAULT_PASSWORD_FILES
  
                        vault password file
  
  --version             show program's version number, config file location, configured module search path, module location, executable location and
  
                        exit
  
  -B SECONDS, --background SECONDS
  
                        run asynchronously, failing after X seconds (default=N/A)
  
  -C, --check           don't make any changes; instead, try to predict some of the changes that may occur
  
  -D, --diff            when changing (small) files and templates, show the differences in those files; works great with --check
  
  -J, --ask-vault-password, --ask-vault-pass
  
                        ask for vault password
  
  -K, --ask-become-pass
  
                        ask for privilege escalation password
  
  -M MODULE_PATH, --module-path MODULE_PATH
  
                        prepend colon-separated path(s) to module library (default={{ ANSIBLE_HOME ~
                        
                        "/plugins/modules:/usr/share/ansible/plugins/modules" }}). This argument may be specified multiple times.
  
  -P POLL_INTERVAL, --poll POLL_INTERVAL
  
                        set the poll interval if using -B (default=15)
  
  -a MODULE_ARGS, --args MODULE_ARGS
  
                        The action's options in space separated k=v format: -a 'opt1=val1 opt2=val2' or a json string: -a '{"opt1": "val1", "opt2":
                        
                        "val2"}'
  
  -e EXTRA_VARS, --extra-vars EXTRA_VARS
  
                        set additional variables as key=value or YAML/JSON, if filename prepend with @. This argument may be specified multiple
                        
                        times.
 
  -f FORKS, --forks FORKS
  
                        specify number of parallel processes to use (default=5)
  
  -h, --help            show this help message and exit
  
  -i INVENTORY, --inventory INVENTORY, --inventory-file INVENTORY
  
                        specify inventory host path or comma separated host list. --inventory-file is deprecated. This argument may be specified
                        
                        multiple times.
  
  -k, --ask-pass        ask for connection password
  
  -l SUBSET, --limit SUBSET
  
                        further limit selected hosts to an additional pattern
  
  -m MODULE_NAME, --module-name MODULE_NAME
  
                        Name of the action to execute (default=command)
  
  -o, --one-line        condense output
  
  -t TREE, --tree TREE  log output to this directory
  
  -v, --verbose         Causes Ansible to print more debug messages. Adding multiple -v will increase the verbosity, the builtin plugins currently
  
                        evaluate up to -vvvvvv. A reasonable level to start is -vvv, connection debugging might require -vvvv. This argument may be
                        
                        specified multiple times.

Privilege Escalation Options:
  
  control how and which user you become as on target hosts

  --become-method BECOME_METHOD
  
                        privilege escalation method to use (default=sudo), use `ansible-doc -t become -l` to list valid choices.
  
  --become-user BECOME_USER
  
                        run operations as this user (default=root)
  
  -b, --become          run operations with become (does not imply password prompting)

Connection Options:
 
  control as whom and how to connect to hosts

  --private-key PRIVATE_KEY_FILE, --key-file PRIVATE_KEY_FILE
  
                        use this file to authenticate the connection
  
  --scp-extra-args SCP_EXTRA_ARGS
  
                        specify extra arguments to pass to scp only (e.g. -l)
  
  --sftp-extra-args SFTP_EXTRA_ARGS
  
                        specify extra arguments to pass to sftp only (e.g. -f, -l)
  
  --ssh-common-args SSH_COMMON_ARGS
  
                        specify common arguments to pass to sftp/scp/ssh (e.g. ProxyCommand)
  
  --ssh-extra-args SSH_EXTRA_ARGS
  
                        specify extra arguments to pass to ssh only (e.g. -R)
  
  -T TIMEOUT, --timeout TIMEOUT
  
                        override the connection timeout in seconds (default depends on connection)
  
  -c CONNECTION, --connection CONNECTION
  
                        connection type to use (default=ssh)
 
  -u REMOTE_USER, --user REMOTE_USER
  
                        connect as this user (default=None)

Some actions do not make sense in Ad-Hoc (include, meta, etc)

root@e49ece7c8f4d:/# 

root@5c1b58c56f78:~# ansible --version
ansible [core 2.16.1]
  config file = None
  configured module search path = ['/root/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/local/lib/python3.10/dist-packages/ansible
  ansible collection location = /root/.ansible/collections:/usr/share/ansible/collections
  executable location = /usr/local/bin/ansible
  python version = 3.10.12 (main, Nov 20 2023, 15:14:05) [GCC 11.4.0] (/usr/bin/python3)
  jinja version = 3.1.2
  libyaml = True
root@5c1b58c56f78:~# cat /tmp/hosts 
[myhosts]
192.168.2.101
192.168.2.249
[all:vars]
ansible_user=user
ansible_ssh_pass='password'
root@5c1b58c56f78:~# export ANSIBLE_CONFIG=/usr/local/etc/ansible/ansible.cfg 
root@5c1b58c56f78:~# ansible --version
ansible [core 2.16.1]
  config file = /usr/local/etc/ansible/ansible.cfg
  configured module search path = ['/root/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/local/lib/python3.10/dist-packages/ansible
  ansible collection location = /root/.ansible/collections:/usr/share/ansible/collections
  executable location = /usr/local/bin/ansible
  python version = 3.10.12 (main, Nov 20 2023, 15:14:05) [GCC 11.4.0] (/usr/bin/python3)
  jinja version = 3.1.2
  libyaml = True
root@5c1b58c56f78:~# ansible-playbook  playbook.yaml

PLAY [My first play] **********************************************************************************************************************************

TASK [Gathering Facts] ********************************************************************************************************************************
[WARNING]: Platform linux on host 192.168.2.101 is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another
Python interpreter could change the meaning of that path. See https://docs.ansible.com/ansible-
core/2.16/reference_appendices/interpreter_discovery.html for more information.
ok: [192.168.2.101]
[WARNING]: Platform linux on host 192.168.2.249 is using the discovered Python interpreter at /usr/bin/python3.11, but future installation of another
Python interpreter could change the meaning of that path. See https://docs.ansible.com/ansible-
core/2.16/reference_appendices/interpreter_discovery.html for more information.
ok: [192.168.2.249]

TASK [Ping my hosts] **********************************************************************************************************************************
ok: [192.168.2.101]
ok: [192.168.2.249]

TASK [Print message] **********************************************************************************************************************************
ok: [192.168.2.101] => {
    "msg": "Hello world"
}
ok: [192.168.2.249] => {
    "msg": "Hello world"
}

PLAY RECAP ********************************************************************************************************************************************
192.168.2.101              : ok=3    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
192.168.2.249              : ok=3    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

root@5c1b58c56f78:~# 

