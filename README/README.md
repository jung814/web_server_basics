## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

(Images/ElkStackDiagram.drawio.png)

These files have been tested and used to generate a live ELK deployment on Azure. 
They can be used to either recreate the entire deployment pictured above. 
Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

  - Ansible/install_elk.yml

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly reliable, in addition to restricting public access to the network.
- Load balancers help maintian system accessability. A jump box acts a buffer system between an admin and public accessible devices

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the log files and system metrics.

The configuration details of each machine may be found below.

| Name                 | Function      | IP Address | Operating System |
|----------------------|---------------|------------|------------------|
| Jump-Box-Provisioner | Gateway       | 10.0.0.4   | Linux            |
| Web-1                | Server        | 10.0.0.5   | Linux            |
| Web-2                | Server        | 10.0.0.6   | Linux            |
| Web-3                | Server        | 10.0.0.10  | Linux            |
| ElkServer1           | Data Analysis | 10.2.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump-Box-Provisioner machine can accept connections from the Internet. 
Access to this machine is only allowed from the following IP addresses:
- 107.193.48.79

Machines within the network can only be accessed by.
- Jump-Box-Provisioner: 10.0.0.4

A summary of the access policies in place can be found in the table below.

| Name           | Publicly Accessible | Allowed IP Addresses |
|----------------|---------------------|----------------------|
| net_sec_1      | No                  | 107.193.48.79        |
| ElkServer1-nsg | No                  | 107.193.48.79        |
|                |                     |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- Deployment is consistent across multiple divices and updating only needs to occur once.

The playbook implements the following tasks:
- *Install Docker 
- *Install docker module
- *Expand virtual memory
- *Download and launch docker elk container
- *enable docker service on boot

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

(Images/docker-ps-output.PNG)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- Web-1: 10.0.0.5, Web-2: 10.0.0.6, Web-3: 10.0.0.10

We have installed the following Beats on these machines:
- filebeat, metricbeat

These Beats allow us to collect the following information from each machine:

- filebeat collects log files as an agent on servers expect to find logs of the servers filebeat is deployed to
- metricbeat collects metrics from the OS and services running on server expect to find information like how many users logged in over time
 


### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. 
Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the install_elk.yml file to etc/ansible.
- Update the host file to include IP of elk server in the elk group
- Run the playbook, and navigate to 40.117.185.214:5601 to check that the installation worked as expected.

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
