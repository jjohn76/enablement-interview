
layout: false
class: compact
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: Configuration
count: true
layout: false

# Configuration

### `length` Parameter
- `length` `(int: <required>)` - Specifies how long the generated password will be. Must be >= 4.

Length is **not** a rule. It is the only part of the configuration that does not adhere to the guess-and-check approach of rules.


???

The length parameter specifies how long the generated password will be. Vault requires it to at least 4 characters.

Please note length is not a rule but part of the configuration that doesn't adhere to any of the rules.
