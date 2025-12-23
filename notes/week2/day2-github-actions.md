# Github Actions

## needs parameter
- is use to make a job dependend on other
```yaml
name: dependent jobs

on:
  workflow_dispatch:

jobs:
  job-1:
    runs-on: ubuntu-24.04
    steps:
      run: echo "hello world - job 1"
  job-2:
    runs-on: ubuntu-24.04
    steps:
      run: echo "hello world - job 2"
  job-3:
    runs-on: ubuntu-24.04
    needs:
      - job-1
      - job-2
    steps:
      run: echo "hello world - job - 3"

```

## example of different type of triggers

```yaml
name: multiple event triggers

on:
  push:
    branches:
        - main
        - dev
        - feature/*
  pull-request:
    types:
        - opened
        - reopened
    branches:
        - main
    paths:
        - "specify path to a certain file" # use ! to exclude files
   schedule:
    - cron: " 0 0 * * *" # 0th min of 0th hour every day

  workflow_dispatch: # this helps to trigger workdlow manually. We can # add option such as specific suite to run etc
```
## Env variables
- can have following scops
    - - workflow
    - - jobs
    - - steps
- If we define an env varable inside a job it can't be used in another job


## Github Output
- you can store variables in github output and they can be access from other steps and even other jobs

```yaml
name: example of sharing var values between steps and jobs

on:
  workflow_dispatch:
jobs:
  master-job:
    runs-on: ubuntu-24.04
    outputs: # we define outputs here which will be shared between jobs
      name: ${{ steps.generate-name.outputs.name}} # generate-name is id of step
    steps:
      - name: export output foo example
        id: generate-name # this will be use to reference the output
        run: |
          name=Alex
          echo "name=${name}" >> $GITHUB_OUTPUT # this will append it to the output
          echo "NAME=${name}" >> $GITHUB_ENV # this will append it to the env
      - name: this step uses values from previous step
        run: |
          echo "this was set via GITHUB_ENV: $NAME"
          echo "this was set via GITHUB_OUTPUT: ${{ steps.generate-name.outputs.name }}

    slave-job:
      runs-on: ubuntu-24.04
      needs: master-job # to use another job's output we need to add it as a dependency
      steps:
        run: |
          echo "this was set via GITHUB_ENV: $NAME" # will be empty value
          echo "this was set via GITHUB_OUTPUT: ${{ needs.master-job.outputs.name }}

```
