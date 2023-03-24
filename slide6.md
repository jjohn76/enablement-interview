
layout: false
class: compact, col-2
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: Configuration & Available Rules Continued
count: true

# Configuration & Available Rules Continued

#### Rule `charset`
Allows you to specify a minimum number of characters from a given charset. For instance: a password must have at least one lowercase letter. This rule also helps construct the charset that the password generation utilizes. In order to generate a password, a charset must be specified.

If multiple charsets are specified, all of the `charsets` will be combined and de-duplicated prior to generating any candidate passwords. Each individual charset rule will still need to be adhered to in order to successfully generate passwords.

><span style="background-color:#fff9e8">After combining and de-duplicating charsets, the length of the charset that candidate passwords are generated from must be no longer than 256 characters.</span>

???

The charset rule allows you to specify a minimum number of characters for a given charset.
