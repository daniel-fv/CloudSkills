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


# OOP, Functional, Procedural
## Functional programming
- Like a mathematical function
- **Imperative**

## Procedural programming
- A set of steps
- **Declarative**
