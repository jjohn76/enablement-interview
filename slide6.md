
layout: false
class: col-2, compact
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: Available Rules
count: true

# Available Rules

### Rule `charset`
.available-rules-charset[Allows you to specify a minimum number of characters from a given charset. For instance: a password must have at least one lowercase letter. This rule also helps construct the charset that the password generation utilizes. In order to generate a password, a charset must be specified.]

### Parameters
.available-rules-parameters[* [`charset`](https://developer.hashicorp.com/vault/docs/concepts/password-policies#charset) `(string: <required>)` - A string representation of the character set that this rule observes. Accepts UTF-8 compatible strings. All characters within the string must be printable. Please note that the JSON output returned may be escaped for the special and control characters such as <,>,& etc as per the JSON specification.

* [`min-chars`](https://developer.hashicorp.com/vault/docs/concepts/password-policies#min-chars) `(int: 0)` - Specifies a minimum number of characters required from the charset specified in this rule. For example: if `min-chars = 2`, the password must have at least 2 characters from `charset`.]

???

The charset rule allows you to specify a minimum number of characters for a given charset.
