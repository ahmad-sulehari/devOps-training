# CI

- A good strategy is to run the linters and unit tests even before building the app.
- - This helps the approach to fail fast and avoid running heavy build process if the app has any obious issues.
- - In testing terminology this is called **static testing** where code is read and testing without executing it.




# CD
 If we want to achieve a fully automated deployment cycles we should keep the following in mind:

1)  The First is to have an intensive amount of automated test coverage
- - unit tests with maximum coverage
- - integration test for all improtent parts of the project
- - E2E test covering all core happy paths


2) The second thing is to have automated confiuration of both stagging and production. with tools like terraform. This helps make both enviorments as identical as possible

3) There must be automated check to monitor the state of application after deployment
- - health checks to see if the app was started successfully
- - An error rate threshhold

4) A Rollback strategy in case the new deployment starts casuing too many errors
- - Green/blue deployment: in which both old and newly deployed app are available. If green(new) starts failing we can switch the traffic to blue (old)
- - canary releases: we can release the app for only a portion of users such as 5 to 10 % and than the tools should monitor if all goes well it should slowly increase the release percentage.
