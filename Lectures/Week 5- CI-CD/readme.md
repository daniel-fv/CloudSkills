# Week 5: Continuous Integration, Continuous Deploy, and Continuous Delivery

## Continuous Integration
Automating the process of merging code back into master in the most efficient way possible.

Pipeline:
- Build
- Unit Tests
- Integration Tests

## Continuous Delivery
Extending CI by deploying the merged code into the environment for testing, qa, and production.

In infrastructure CD could be applying the infrastructure as code changes. New environment or infrastructure changes on top of an actual environment (resizing a server, etc.). Pushing changes to an environment already in production.

Pipeline:
- Review
- Staging
- Production

## Continuous Deployment 
Extending continuous delivery by removing human intervention from the CI/CD process. Changes automatically deploy to test, qa and production.

## CI/CD Tools
- Azure DevOps
- Github Actions
- AWS Code Deploy
- Jenkins
- CircleCI
- TravisCI

## YAML Pipelines
Most CI/CD tools work using YAML Pipelines.

## Deploying CI/CD on Premise
- Github Self Hosted Runners
- Azure DevOps Self Hosted Agents

## CI/CD not just for applications
- Infraestructure
- Database Administration
- 3rd party artifacts
  - packages
  - executables
  - installable software

