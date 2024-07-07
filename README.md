# Set a var in a file during docker build

- This project requires the "Lambda-Node-Pendo-Script" project to be running locally
- $ sam build
- $ sam local start-api
- Then this project will console.log the SCRIPT env var as a script tag the points to a Pendo install script with the integrity(SRI) attribute set with the correct hash and the crossorigin attribute set to anonymous.

## Commands used in this boilerplate

### build and tag your tag the docker image

- $ docker build -t set-var .

### run the built image

- docker run set-var
  
### use this tutorial to edit file inline

- https://unix.stackexchange.com/questions/454220/how-to-assign-variable-and-use-sed-to-replace-contents-of-configuration-file-in

### the following tutorials helped to create a bash script for a docker file which would set a variable in a file

- https://www.bmc.com/blogs/docker-cmd-vs-entrypoint/
- https://kinsta.com/blog/dockerfile-entrypoint/
- https://ss64.com/mac/sed.html
- https://singhkays.com/blog/sed-error-i-expects-followed-by-text/
- https://klotzandrew.com/blog/docker-dynamic-environment-variables/
- https://www.cherryservers.com/blog/set-docker-environment-variables
- https://medium.com/@leonardo5621_66451/learn-how-to-use-entrypoint-scripts-in-docker-images-fede010f172d
