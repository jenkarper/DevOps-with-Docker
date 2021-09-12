# Part 3

3.1 Deployment pipeline to Heroku

I used the image for the course pages (thank you!). [Here](https://github.com/jenkarper/deployment-pipeline) is the GitHub repository with the [deploy.yml](https://github.com/jenkarper/deployment-pipeline/blob/main/.github/workflows/deploy.yml) configuration file, and [here](https://deployment-pipeline-exercise.herokuapp.com/) the app running in Heroku.

3.2 Building images inside a container

- [Dockerfile](3.2_Building-inside-container/Dockerfile)
- [docker-compose.yml](3.2_Building-inside-container/docker-compose.yml)
- [shell script](3.2_Building-inside-container/build-tool.sh)
- [file](3.2_Building-inside-container/variables.env) containing variables

I tested the app with the [rails-example-project](https://github.com/docker-hy/material-applications/tree/main/rails-example-project) and the [spring-example-project](https://github.com/docker-hy/material-applications/tree/main/spring-example-project) from the course material (after I had cloned them into their own repositories), as well as with my own [docker-homework](https://github.com/jenkarper/docker-homework) from part 1 and one random public repository.
