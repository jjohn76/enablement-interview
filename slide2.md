layout: true
class: compact
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: Candidate Password Generation
count: true

# Candidate Password Generation

How a candidate password is generated is extremely important. Great care must be placed to ensure that passwords aren't created in a way that can be exploited by threat actors. This section describes how we generate passwords within password policies to ensure that passwords are generated as securely as possible.

To generate a candidate password, three things are needed:

1. A [cryptographically secure random number generator](https://pkg.go.dev/crypto/rand) (RNG).

2. A character set (charset) to select characters from.

3. The length of the password.

???

Candidate password generation is extremely important to Hashicorp. We have a set of processes that goes into password generation which requires 3 things.

1. A [cryptographically secure random number generator](https://pkg.go.dev/crypto/rand) (RNG).

2. A character set (charset) to select characters from.

3. The length of the password.


---