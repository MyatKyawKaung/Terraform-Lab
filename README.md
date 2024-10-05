<h1 align="center">Automated VPC & Subnet Provisioning with Terraform on AWS</h1>

This Terraform lab demonstrates the automated creation and configuration of a multi-tier AWS VPC infrastructure. It covers essential components such as public and private subnets, internet gateways, and NAT gateways. The lab provides a step-by-step guide with visual aids to assist users in replicating the setup. <br>
***Note:*** For the purpose of this lab, I am not concerned about exposing secrets to the internet. This is a controlled environment for learning and experimentation.

<h2 align="left">This is a high level diagram for my AWS Infrastructure</h2>

<img align="center" src="https://github.com/user-attachments/assets/1a6ae068-360c-4ccf-8dec-cd0284c5e7e7" height="900" width="1200"><br>

This template can be deployed to create and configure the VPC in an automated and repeatable manner. Here's a step-by-step guide to creating an AWS VPC Infrastructure using Terraform.

<h3 align="left">#Terraform Authentication for AWS provider</h3>
This enables terraform plugins to connect to AWS provider

![Image00](https://github.com/user-attachments/assets/885356ff-c37e-42a5-8bde-f3703ffdb510)

This step follows a detailed procedure on configuring Terraform for AWS provider.

![Image01](https://github.com/user-attachments/assets/16db26a7-25f3-447b-92c4-98ea793f491c "alt text")


<h3 align="left">#Step 1. Creating a VPC</h3>

This template creates a VPC names VPC1 with 192.168.0.0/16 IPV4 CIDR.

![Image02](https://github.com/user-attachments/assets/af77b577-0654-4549-b023-d9ccbbdd6c05)
![Image03](https://github.com/user-attachments/assets/5a1cf1c7-0840-4fd8-87de-21fb96d9f38b)

<h3 align="left">#Step 2. Creating public subnets</h3>

Following template creates a multiple Public subnets within VPC1. 

![Image04](https://github.com/user-attachments/assets/538f4090-6050-4c79-ac1d-2a56109479f2)
![Image05](https://github.com/user-attachments/assets/7a4be0d3-558b-4954-aeda-d0c0b81769d4)


<h3 align="left">#Step 3. Creating an Internet Gateway (IGW) for VPC and link to VPC</h3>

The following template produces Internet Gateway named GatewayforSubnets and attaches to VPC1.

![Image06](https://github.com/user-attachments/assets/62f0d534-c226-4818-ad21-6394ba38d787)
![Image07](https://github.com/user-attachments/assets/f78f2cd8-ec36-4462-a760-a57cdca0bc4e)

<h3 align="left">#Step 4. Creating a custom route table for default route.</h3>

![Image08](https://github.com/user-attachments/assets/6e0c6e52-e260-4764-9c00-523be982f2bd)
![Image09](https://github.com/user-attachments/assets/a19033e9-37f0-462e-9822-6d4f14558f6b)

<h3 align="left">#Step 5. Creating each private subnet in different availability zones and attached to VPC.</h3>

![Image10](https://github.com/user-attachments/assets/b0c752ad-b03b-492f-86bb-caad755d64fc)
![Image11](https://github.com/user-attachments/assets/857fe55e-7e5e-434d-a08f-a8637059092e)

<h3 align="left">#Step 6. Creating route tables for each rprivate subnet and associate them to their respective subnets.</h3>

![Image12](https://github.com/user-attachments/assets/123f2aa7-d855-4df4-9108-63ddafd17b5e)
![Image13](https://github.com/user-attachments/assets/01ffa569-8db3-4be6-a7f2-460695da3c32)
![Image14](https://github.com/user-attachments/assets/28ca929e-fdf6-42d5-b62f-5d6289b86bbd)

<h3 align="left">#Step 7. Creating elastic IP and attached to NAT gateway.</h3>

![Image15](https://github.com/user-attachments/assets/812a5119-f16f-405f-bb43-6b9bbdf370fb)
![Image16](https://github.com/user-attachments/assets/ed9cc377-cbda-49fa-a249-214dea14bd1d)

<h3 align="left">#Step 8. Binding routes for each private subnet to NAT gateway.</h3> 
This deployment allows private subnets to have reachability to the Internet.

![Image17](https://github.com/user-attachments/assets/b847ebc6-07ed-48fe-a011-e13ea490da8e)
![Image18](https://github.com/user-attachments/assets/6c258722-fd46-4239-aba7-0b473711a5c4) 

