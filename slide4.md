layout: true
class: compact
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: Password Policy Syntax
count: true

# Password Policy Syntax

Password policies are defined in [HCL](https://github.com/hashicorp/hcl) or JSON which defines the length of the password and a set of rules a password must adhere to.

See the [API docs](https://developer.hashicorp.com/vault/api-docs/system/policies-password) for examples of the commands to save/read/etc. password policies

Here is a very simple policy which generates 20 character passwords from lowercase characters:

```hcl
length = 20
rule "charset" {
  charset = "abcdefghijklmnopqrstuvwxyz"
}

```

???
Password policies can be defined in HCL or JSON. You provide the length of the password and the set of rules the password must follow. The code shows a very simple policy in HCL.

---