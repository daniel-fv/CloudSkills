# Immutable vs Mutable

## Immutable 
'Immutable' is the state of being unchangeable. 

The infrastructure cannot be modified once deployed. 

When changes are necessary, you need to deploy afresh, add infrastructure, and decommission old infrastructure.

Examples: Terraform

## Mutable
'Mutable' suggests the ability to change- to mutate into something new. 

In the DevOps world, the advantage of mutability is crucial when you wish to retain previous data without worrying about obtaining new infrastructure. 
You can apply patches, upgrade or downgrade, and scale up and down.

# Declarative vs Imperative

## Declarative
- Describe the outcome.
- The system is smart, you don't care.
- Tell me what to do, not how to do it
- Examples: 
  - Terraform
  - Cloudformation
  - Go

  
## Imperative
- Explicit instructions
- The system is stupid, you are smart.
- Tell me how to do it.
- Examples:
  - Java
  - C#
  - C++


# Functional, Procedural
## Functional programming
- Like a mathematical function
- **Imperative**

## Procedural programming
- A set of steps
- **Declarative**

# Idempotence
- Make the same call (API call, HTTP method, command, etc.) without the result changing.
- Making multiple, identical requests has the same effect as a single request
- Example: if you delete a file and try to delete it again we won't get the same result because the file is already deleted, we can't modify it again.

# Testing code
## Unit Tests
Test a specific component (a functionality) of a specific piece of code. Example: test a sum function in the code.

## Mock Test
Make assertions, confirm if output is a string for example. Confirmation.

## Regression Test
Confirm if the code is working after a particular change in the code.

## Linting
Linting is the automated checking of your source code for programmatic and stylistic errors. This is done by using a lint tool.


