### HW21

- Try to read and play with https://docs.ansible.com/ansible/latest/user_guide/playbooks_loops.html
- Get the latest version of packages from the task mentioned in HW20 point 5. Update your playbook with installing a particular version of those packages instead of latest. Do this in 2 ways: using loop and with_*
- Create a simple log generator systemd service using ansible template. Service name, path to logs should be set by ansible. Logs should contain date, time and timezone(+3 For example or UTC) and host ip the service running on.

[HW21 PR](https://github.com/nsdementar/TMS/pull/12)

# Screenshots

![Result](https://i.ibb.co/MGLGXHr/Result-Ansible-Playbook1.jpg)
![Result](https://i.ibb.co/nQkVGZW/Result-Ansible-Playbook2.jpg)

-------------------------
# Ubuntu Server

![Ubuntu](https://i.ibb.co/Z8WzqXz/hw21-log-Debian.jpg)
![Ubuntu](https://i.ibb.co/gvTfgP9/hw21-status-Debian.jpg)

-------------------------
# CentOS

![CentOS](https://i.ibb.co/P6rzQvn/hw21-log-Cent-Os.jpg)
![CentOS](https://i.ibb.co/hgq5zMh/hw21-status-Cent-OS.jpg)