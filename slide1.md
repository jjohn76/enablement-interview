
layout: false
class: compact
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: Design
count: true

## Design

<p style="font-size:80%;">
Password policies fundamentally have two parts: a length, and a set of rules that a password must adhere to. Passwords are randomly generated from the de-duplicated union of charsets found in all rules and then checked against each of the rules to determine if the candidate password is valid according to the policy. See Candidate Password Generation for details on how passwords are generated prior to being checked against the rule set.
</p>

<p style="font-size:80%;">
A rule is an assertion upon a candidate password string that indicates whether or not the password is acceptable. For example: a "charset" rule states that a password must have at least one lowercase letter in it. This rule will reject any passwords that do not have any lowercase letters in it.
</p>


<img src="./assets/images/vault-design-flow.svg" alt="Vault Design Flow" 
style="display: block; margin-left: auto; margin-right: auto; width:70%" title="Employee Data title">


???

Password policies have 2 basic parts.

Length - Fundamentally a set length for the password.

Set of Rules - A rule is an assertion upon a candidate password string that indicates if the password is good or not. Example would be a charset rule that requires a password needs to have at least 1 lowercase letter in it.

