# Matrix Env in Github Actions

- matrix allow us to crate different combinations of runtime envs
- this is useful in the testing context for running tests for out app on different envs
- such as running tests on safari for mac OS and on chrome on ubuntu all using the same workflow steps and not needing to write separate jobs.
- we can also use the **include** and **exclude** options to include or exclude certain env from our executions
