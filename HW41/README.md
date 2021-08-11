### HW41

- Create VPC with 1 private and 1 public subnets.

![Result](https://i.ibb.co/bHxnj07/VPC.jpg)
![Result](https://i.ibb.co/bbnD605/Subnets.jpg)

- Create 2 EC2 instances each in different subnet:
  - SG(Security Group) should allow access to your instances only from your IP and VPC CIDR.
  - Both of them should have access to the Internet. Check prices. Nat Gateway not under free tier.
  - Instance from private subnet should NOT be available from the Internet.
  
![Result](https://i.ibb.co/gZ5NSW5/Internet-GW.jpg)
![Result](https://i.ibb.co/PDgwcxq/NAT-GW.jpg)
![Result](https://i.ibb.co/4m89LYT/Security-Groups.jpg)
![Result](https://i.ibb.co/SDjBm10/SG-Inbound-rules.jpg)
![Result](https://i.ibb.co/Rz9wDYf/SG-Outbound-rules.jpg)
![Result](https://i.ibb.co/J3nRgtd/Route-tables.jpg)
![Result](https://i.ibb.co/Tmsyvy6/Instance-with-private-subnet.jpg)
![Result](https://i.ibb.co/vQ9FYRH/Instance-with-public-subnet.jpg)
![Result](https://i.ibb.co/vzqPg57/Connect-instance.jpg)


- How to “convert” private subnet to public and vice versa?

![Result](https://i.ibb.co/8cq7vFh/Convert-private-subnet-to-public.jpg)
