# Welcome to the IaC design and architecture guide
This repository will work as a IaC guide and library. It will have section describing IacC, how to get started with IaC, pratical examples of IaC, different IaC options and tools, and lastely different design decisions and IaC architecture.

# Table of Content
* Something about Terraform
* Something about Ansible
* Something about Puppet
* Something about Chef
* Something about SaltStack
* Something about Infrastrcuture
* Soemthing about plattforms like Azure, AWS, GCP, vRA, Nutanix, Pulumi, Terraform Cloud
* Something about the platform native IaC, like ARM, Bicep, CloudFormation, vRA (YAML) 
* Something about git, repositories and GitOps
* Something about CI/CD pipelines
* Something about design decisions of the stack above
* Something about how to put everything together into a wholistic archeitcture
* Something about DevOps and processes
* Something about necessary team knowledge and skillsets
* Something about Way of Working

<br>

# IaC basics


### Configration Management vs Provisioning Tools
Configuration Mangement tools are designed to install and manage software on existing infrastructure (servers), while provisioning tools are designed to provision the infrastructure (servers, load balancers, databases, networks etc.).

Configuration management tools and provisioning tools are not mutally exclusive, and in most cases the tools in each category can to parts of the competive tool category, although in a much less elegant way.

Configuration management tools also tend to create *mutable* infrastrcuture, whereby provisioning tools create *immutable* infrastructure.

| Configration Management  | Provisioning |
|----------|-----------|
| Ansible | Terraform      |
| Chef | CloudFormation |
| Puppet | ARM |
| SatlStack | Biceps |

### Mutable vs Immutable Infrastructure

**Mutable infrastructure** is a term where infrastructure are liable to change. This implies that infrastructure components like servers can be changed and updated when necessary, like meeting changing requirements or needs for either business or users. Tradionally, infrastructre have been desigend as mutable. 

Mutable infrastructre has severel advantages compared to immutable. Tradionally, one could fix problems rapidly, as one used the same infrastructre (servers/VMs) to do necessary changes or updates. Changes and updates can be as simple as configuration settings, software upgrade, or installing new software. Also the infrastrcutre can be tailored to meed the spesific needs of applications or running environments. 

However, the advantages can become the disadvantages. Configurational drift is a well known term in large enterprise infrastructure. As the infrastructure scale and the a amount of infrastrcuture component rises, to keep all relevant component on the same standard configuration is hard. And with manual processes, it is close to impossible. 

**Immutable infrastrucre** does not allow to change or update the existing infrastructure. In order to provide new functionality, services, or features, one need to provision a new set of infrastructure and decommision the old one when provisioned successfully and network traffic directed to the new infrastrcuture. 

With Immutable infrastrucutre one eliminate the challanges with configuration drift, as there is no change or update to the existing infrastrucutre. If you deploy your pre-defined Windows Server 2022 or RHEL 8 image, you are sure it has the defined, standard configuration and software on it. 



### Procedural vs Declarative  



<br>


**Tord Langedal Ness**  
[Zebra Consulting](https://zebraconsulting.no)  
![Zebra Consulting](ZebraConsultingIcon.png)





