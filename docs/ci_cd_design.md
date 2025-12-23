# CI/CD Design

## development
- Before the code is committed. It should pass through local linting checks which can be achieved by using git pre-commit hooks.

## CI
- After code is commited to the repo. It is to be tested via unit tests and linter
- Code need to be built into a package so that it can be deployed to stagging/QA server

## Deployed to staging
- app needs to be deployed to stagging for testing
