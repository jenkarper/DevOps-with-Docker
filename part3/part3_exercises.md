# Part 3

3.1 Deployment pipeline to Heroku

I used the image for the course pages (thank you!). [Here](https://github.com/jenkarper/deployment-pipeline) is the GitHub repository with the [deploy.yml](https://github.com/jenkarper/deployment-pipeline/blob/main/.github/workflows/deploy.yml) configuration file, and [here](https://deployment-pipeline-exercise.herokuapp.com/) the app running in Heroku.

3.2 Building images inside a container

- [Dockerfile](3.2_Building-inside-container/Dockerfile)
- [docker-compose.yml](3.2_Building-inside-container/docker-compose.yml)
- [shell script](3.2_Building-inside-container/build-tool.sh)
- [file](3.2_Building-inside-container/variables.env) containing variables

I tested the app with the [rails-example-project](https://github.com/docker-hy/material-applications/tree/main/rails-example-project) and the [spring-example-project](https://github.com/docker-hy/material-applications/tree/main/spring-example-project) from the course material (after I had cloned them into their own repositories), as well as with my own [docker-homework](https://github.com/jenkarper/docker-homework) from part 1 and one random public repository.

3.3 Containers with non-root user

- [Frontend Dockerfile](3.3_Non-root-user/Dockerfile.front)
- [Backend Dockerfile](3.3_Non-root-user/Dockerfile.back)

3.4 Reducing image size by chaining RUN commands

- [Difference in image sizes](3.4_Optimizing-Dockerfiles/3.4_images-sizes-before-and-after.png)
  - I have used the official images for golang and node instead of ubuntu, which increases the image size. After chaining the RUN commands in both Dockerfiles I reached a 0.19GB save for the frontend image and a 0.02GB save for the backend image.
- Dockerfiles: [front](3.4_Optimizing-Dockerfiles/Dockerfile.front) and [back](3.4_Optimizing-Dockerfiles/Dockerfile.back)

3.5 Changing the base image

- [Difference in image sizes](3.5_Changing-base-images/3.5_Images-with-alpine.png)
  - Instead of changing from ubuntu to golang/node (which I have been using all along), I added the tag alpine to both Dockerfiles and made the required changes in the content. This reduced image size significantly to 447MB for backend and 406MB for frontend.
- Dockerfiles: [front](3.5_Changing-base-images/Dockerfile.front) and [back](3.5_Changing-base-images/Dockerfile.back)
