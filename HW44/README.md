### HW44

- Read
  - https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html
  - https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html
  - https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic-cross-account.html

- Install and configure aws cli tool use both versions(1.X and 2.X).
  - Create profile.

![Result](https://i.ibb.co/grXDBTQ/aws-version.jpg)
![Result](https://i.ibb.co/YyyRPsx/aws-config.jpg)

- Create an EC2 instance. Save ID of the instance to the file using aws cli version2.

![Result](https://i.ibb.co/5YBxzZX/Launch-instance.jpg)
![Result](https://i.ibb.co/Z8z1CZD/Instance-ID.jpg)

- How to get info which role(user) are you?(Print username or role you currently using with aws cli).

![Result](https://i.ibb.co/vHFmWD9/AWS-user.jpg)

- Create ec2 instance using aws cli.
  
![Result](https://i.ibb.co/M7t0Tpf/Launch-instance-using-cli-1.jpg)
![Result](https://i.ibb.co/p19ss7q/Launch-instance-using-cli-2.jpg)

- Create aws user, role and policy using aws cli.

![Result](https://i.ibb.co/Sm4Xqf0/Create-user-using-cli.jpg)
![Result](https://i.ibb.co/mtP9gmb/Create-user-using-cli2.jpg)
![Result](https://i.ibb.co/YRD83W0/Create-role.jpg)
![Result](https://i.ibb.co/vCWyRtT/Create-role2.jpg)
![Result](https://i.ibb.co/DMh3GQS/Create-policy.jpg)
![Result](https://i.ibb.co/8XK140r/Create-policy2.jpg)

- Optional:
  - Do task 3 using python boto3 lib.
  - Assume role by your user.
