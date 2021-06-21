### HW23

- Difference between ansible module: command, shell and raw.
- Create a role hw23. Inside the role:
  - Create file /opt/hw23_test_file. Set 644 permissions.
  - Do in 2 ways. Rename the file /opt/hw23_test_file to hw23_test_file_exists if file exists(/opt/hw23_test_file) otherwise print debug message that FILE_NAME does not exist.
  - Create link /opt/hw23_link to /etc/hosts.
  - If  /opt/hw23_link is a link, rename it to hw23_test_file_link. otherwise print debug message that FILE_NAME does not exist or not a link.
  - Run ansible twice to test both cases.
- Inside the role hw23 create separate tasks file hw23_1.yml:
  - Move packages installation from previous HWs to block sections with adding installation of latest nginx version. Use handlers to restart docker and nginx services.
  - Create 2 tasks  - one which should have rc=0(set as a variable) another one with rc=2(set as a variable). Print debug message with the task name and rc(use register  and when).
- Update hw23_1.yml. Add validation of nginx service. Check nginx process is running. If not - restart nginx right after you found that no process exists ad print last 20 lines of nginx log with debug.

[HW23 PR]()

# Screenshots

![Result](https://i.ibb.co/DQQnbjZ/Result-1.jpg)
![Result](https://i.ibb.co/StdVp4m/Result-2.jpg)
![Result](https://i.ibb.co/CKvwxVL/Screenshot-3.jpg)
