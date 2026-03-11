## Network Design
![alt text](<../screenshots/AWS VPC Network design.png>)

### VPC
 - A region can have multiple  VPC's
 - A VPC can only be inside one region
 - It is a logically isolated network
 - A VPC can span accross all AZ in a region

 ### Subnets
 - Subnets are use to isolate traffic to resources within an AZ
 - Subnet can span over an AZ
 - Two AZ can't have the same subnet
 - An AZ can have multiple subnets
 - Multiple resources inside an AZ can have same or different subnets
 - Each resource can communicate with any resources in the same VPC all accross the region.

 #### Note: Communication accross VPC's is possible but is not default
##### you have to use:
  - VPC Peering
  - AWS Transit Gateway
  - VPC Endpoints (PrivateLink)

### Access to Internet
- Internet Gateway allow inbound/outbound traffic to reach the public subnet
- You also need to configure the sequrity group rules
- You also need to add the routes in the router table to point destination **0.0.0.0/0** to target **igw-xxxxxx**
-
