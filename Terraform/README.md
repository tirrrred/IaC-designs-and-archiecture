# What is Terraform

![Terraform](terraform.png) <br>
Terraform is a IaC tool from Hasicorp. Terraform is used for building, changing, destroying, and versioning infrastrcuture. Many will first think of Terraform as a IaC language, although it is more than that, hence a IaC tool.

## Why Terraform

* It is vendor agnostic
* It is open source
* It has a active community
* The language and syntax is clean (compared to YAML and JSON)
* Terraform provides a plan to highlights which infrastructure changes to be applied

## HasiCorp Configuration Language (HCL)

Terraform has it own syntax for creating configuration files, the HashiCorp Configuration Language (HCL), and is technically a programming language. The HCL is designed to be relatively easy for humans to read and write. This is a great trait with HCL, as it is much easier to understand the IaC compared to other IaC tools that uses JSON or YAML (my opinion). Also, HCL is declarative, describing and intended goal rather than the stesp to reach to that goal (imperatove programming). Lastly, I will highlight that the ordering of blocks of code in HCL and how the code are organized are generally not significant because Terraform considers implicit and explicit relationships between resources and thereby determining the order of operations. It is however cases were you explicitly in the HCL code will state wich block of code that deponds on each other. It is worth keeping that in mind although Terraform will mainly do this for you! And that is why Terraform is more than a *programming language* and an **Iac Tool**.  
  
## Terraform Basics
  









## Note for myself - look into these comments:
mostly a copy and paste massage from https://www.terraform-best-practices.com/
its aimed at novices and learners that don't need inter organisatonal collaboration.

Bare in mind Terraform binary is just another CLI tool much like a sledgehammer it's how you use it that experience with combination of multiple best practices that works.

Don't have TF modules in your application repo it does not follow DRY and you'll end up with duplication of TF code for other application stacks and a mess to clear up plus confusion.

Make sure to include a unique namespace for parallel deployments, most folk make the same mistake and code with resources to be environment specific but when devops, developers and engineers need to be able to spin up the same stack name space clashing makes it impossible.

Something that is meaningful for your team, like the PR/MR number from your CICD pipelines.

I see alot of engineers and developers that use Terraform and build a monolith infrastructure stack with a single Terraform State File, then it all goes 💥 when making the slightest change for destroying resources.

Split out non immutable resources that is not core of your application stack ie VPC, EiPs


1. IaC will drastically improve your efficiency
2. IaC is probably going to solve many issues you are facing today
3. IaC is not something you buy; you will have to build the know-how and team discipline to use it
4. IaC is not sci-fi, you can start using it today and reap the benefits
5. You need the right IT infrastructure for the job

The Right Team Skills (Build or Buy)
* DevOps Mentality
* Coding skills
* IaC tools
* Configuration Management tools

