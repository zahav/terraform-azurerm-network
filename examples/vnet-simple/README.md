# Simple Virtual Network

Quickly create a simple virtual network to use for development/test environments.

## Usage

To run this example you need to execute:

```bash
$ cp terraform.tfvars.example terraform.tfvars
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which can cost money (Virtual Machines, Azure Firewall, for example). Run `terraform destroy` when you don't need these resources.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_azure"></a> [azure](#requirement\_azure) | >= 2.0 |