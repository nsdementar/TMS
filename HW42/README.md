### HW42

NLB:
Create NLB and target group. Target group should contain EC2 instances from the task below. Use NLB to connect via SSH to the instance.
ELB:
Do the same but with ELB. So you can connect to the instance using both - NLB and ELB

![Result](https://i.ibb.co/0qXppm6/NLB.jpg)
![Result](https://i.ibb.co/Fgbccxb/Connect-to-NLB.jpg)
![Result](https://i.ibb.co/GVbJ3pq/ELB.jpg)
![Result](https://i.ibb.co/Hpx6QwX/Connect-to-ELB.jpg)
![Result](https://i.ibb.co/NNF269c/Target-groups.jpg)

- Create a Linux ec2 instance.
  - Attach EIP to this instance.

  ![Result](https://i.ibb.co/RjD8dhV/Instance-with-EIP.jpg)

  - Attach a secondary private network interface.

  ![Result](https://i.ibb.co/1ZhysHT/Secondary-private-network-interface.jpg)

  - How many IPs can you associate with your instance type(how many  IPs per ENI)?

  EC2 free tire t2.micro allows two ENI.
  Each ENI can have one public and one private address.
  Summary t2.micro allows four IP addresses.

  - Attach another ENI to the instance?

  ![Result](https://i.ibb.co/xDKpyhw/Another-ENI.jpg)

  - Make a snapshot of your root volume.

  ![Result](https://i.ibb.co/ccRxJ4Z/Create-snapshot.jpg)

  - Resize root volume.

  ![Result](https://i.ibb.co/t31M17N/Resize-volume.jpg)

  - Attach a new EBS to your instance. mount it to /tmp dir.

  ![Result](https://i.ibb.co/QnvF7DV/Attach-new-volume.jpg)
  ![Result](https://i.ibb.co/BZsMcqS/Attach-new-volume-1.jpg)
  ![Result](https://i.ibb.co/h8stDmD/Attach-new-volume-2.jpg)

  - Enable deletion protection for EC2. Try to terminate the instance.

  ![Result](https://i.ibb.co/0qtkPh2/Termination-protections-enable.jpg)

  - Check the screenshot of your EC2.

  ![Result](https://i.ibb.co/sWPBg75/Termination-protections-enable-1.jpg)

  - Delete  instance. Delete EBS if remains. Delete snapshot.

  ![Result](https://i.ibb.co/tCvgP4f/Delete-volume.jpg)
  ![Result](https://i.ibb.co/QDPmVPG/Delete-snapshot.jpg)

- Create a S3 bucket.
  - Copy any object to s3. Make it public. Try to download it using wget  and curl.

  ![Result](https://i.ibb.co/t2mCshG/Create-s3-bucket.jpg)
  ![Result](https://i.ibb.co/vzccWnn/Make-public.jpg)
  ![Result](https://i.ibb.co/6BWH69W/Test-public-object-to-s3.jpg)
  
  - Create a folder. Create a lifecycle policy to delete  everything in the folder older than 1 day. Check this policy works.

  ![Result](https://i.ibb.co/N9wXxSS/Lifecycle-policy.jpg)

  - Disable public access!
  
  ![Result](https://i.ibb.co/SPk6JMj/Disable-public-access.jpg)
  ![Result](https://i.ibb.co/RNdN8jd/Disable-public-access-1.jpg)

- Optional
  - How to get access to EC2 if you lost the ssh key? Try it!

    - You need to have
    - s3 400GB
    - 10 ec2 instance m5.xlarge.
    - 1 ALB
    - 3000 GB internet traffic per month
    - Try to get roughly expenses you will have
    - Regions: us-east-1 and eu-west-1

  - Create an autoscaling group.
