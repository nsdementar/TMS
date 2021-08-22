### HW43

- Create private R53 hosted zone. Associate it with your VPC.

![Result](https://i.ibb.co/Ld9KhGt/Create-private-hosted-zone.jpg)
![Result](https://i.ibb.co/tMS3VjJ/Hosted-zone.jpg)

- Create EC2.

  - Using userdata install aws ssm agent, and jdk latest version and add your custom ssh public key.

![Result](https://i.ibb.co/hYqhhr3/Using-userdata.jpg)
![Result](https://i.ibb.co/NSxtQSq/Check-ssm-agent-java-public-key.jpg)

  - Optional.Paid.Create R53 record for the instance. Some free DNS services can be used.

![Result](https://i.ibb.co/tCsbs9z/A-record-for-the-instance.jpg)

  - Optional.Create another ec2 instance and connect to the first one using DNS name you created.

![Result](https://i.ibb.co/25k2Y1S/Connect-to-instance-HW43-2.jpg)

- Create your custom AMI.
  - Install all updates.
  - Install Python latest version.
  - Install botocore and boto3 libs using requirements.txt.
  - Install Nginx.

![Result](https://i.ibb.co/m8gGpRC/Create-Instance-with-installed-packages.jpg)
![Result](https://i.ibb.co/BjFpNNM/GOLD-instance-2.jpg)
![Result](https://i.ibb.co/94BR3x5/GOLD-instance.jpg)
![Result](https://i.ibb.co/BPR0gxs/Create-image.jpg)
![Result](https://i.ibb.co/7JY5Pfd/AMI.jpg)

- Create ASG using nginx AMI you created. Just do it without any trigger to scale. Try to scale it up and down.

![Result](https://i.ibb.co/z8HTTvt/Create-Template.jpg)
![Result](https://i.ibb.co/MnM5HtQ/Create-Template-2.jpg)
![Result](https://i.ibb.co/dbmpT36/Create-ASG.jpg)
![Result](https://i.ibb.co/TPVCvQn/ASG.jpg)
![Result](https://i.ibb.co/vQ8pCn6/Scale-down-and-up.jpg)

- Create ALB(NLB). Attach the LB to ASG you create. Scale up and down your nodes.

![Result](https://i.ibb.co/FsF3FvJ/Create-ALB.jpg)
![Result](https://i.ibb.co/NyZjbzQ/ALB-2.jpg)
![Result](https://i.ibb.co/d6B79Mr/Target-Group.jpg)
![Result](https://i.ibb.co/P6T1xr5/curl-ALB.jpg)
![Result](https://i.ibb.co/K7G8fj2/Scailing-up-and-down.jpg)
![Result](https://i.ibb.co/7JQC2vF/Scailing-down.jpg)
![Result](https://i.ibb.co/ftXTCvC/Scailing-down-2.jpg)

- Create AWS private RDS(DEV template. postgre or mysql).

![Result](https://i.ibb.co/VMCGWDM/RDS-1.jpg)
![Result](https://i.ibb.co/KNKT59k/RDS-2.jpg)
![Result](https://i.ibb.co/cb2krZ7/RDS-3.jpg)
![Result](https://i.ibb.co/S7FQTq8/RDS-4.jpg)
![Result](https://i.ibb.co/q7h3Xz5/RDS-5.jpg)
![Result](https://i.ibb.co/x2Wjq54/RDS-6.jpg)
