#VPC on DigitalOcean with Pertino

Requires a Pertino Account. 

Begin setup by creating your `tfvars` file:

```bash
cp sample.terraform.tfvars terraform.tfvars
```

then populate with your SSH key fingerprint (or ID) from your DigitalOcean account, the path to your public key locally (Usually in ~/.ssh).

You can specify the size of the deployed VPC by setting the `vpc_member_count`, or omit it from the `tfvars` and be prompted on setup.

Optionally, you can provide youe `pertino_username` and `pertino_password`, otherwise, you will be prompted when you apply the configuration.

##Usage

Once your `tfvars` file is populated, run:

```bash
terraform apply
```

You can verify the connection to the VPC by running:

```bash
ifconfig pertino0
```

on any of the configured systems.