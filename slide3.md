
layout: false
class: compact, col-2
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: Performance Characteristics
count: true

# Performance Characteristics

The more restrictive the password policy is, the longer it will take to generate a password. This generalization isn't always true, but is a general guideline. The performance curve can be generalized:

`(time to generate a candidate password) * (number of candidate passwords generated)`

Where the number of times a candidate password needs to be generated is a function of how likely a given candidate password does not pass all of the rules. 

The graph shows some example policy configurations with their performance.![scale:20%](./assets/images/performance-characteristics.svg)


???

The general rule with password generation is the more restrictive the password policy, the longer it will take to generate a password. The graph on the right shows some common password policies and their performance

