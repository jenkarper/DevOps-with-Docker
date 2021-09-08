# Part 2

2.1 [First docker-compose.yml file](2.1_First-docker-compose-file/docker-compose.yml)

2.2 [Docker compose with command](2.2_Docker-compose-with-command/docker-compose.yml)

2.3 [Combining front and back with docker compose](2.3_Combining-front-and-back/docker-compose.yml)

2.4 [Configuring redis](2.4_Redis/docker-compose.yml)

2.5 [Scaling containers](screenshots/2.5_Scaling.png):

    sudo docker-compose up -d --scale compute=3
    
2.6 [Add database to backend](2.6_Database-to-backend/docker-compose.yml)

2.7 [Machine learning with Kurkkumopo](2.7_Kurkkumopo/docker-compose.yml)

2.8 [Configuring reverse proxy](2.8_Reverse_proxy/docker-compose.yml)

2.9 [Manually defining volumes](2.9_Manually-defining-volumes/docker-compose.yml)

2.10 Fixing buttons for frontend + backend project:

* I removed the environment variables `REQUEST_ORIGIN` and `REACT_APP_BACKEND_URL` in the [backend](2.10_Fixing-buttons/Dockerfile_back) and [frontend](2.10_Fixing-buttons/Dockerfile_front) Dockerfiles.
* I added the build key for both [front](2.10_Fixing-buttons/docker-compose.yml#L26) and [back](2.10_Fixing-buttons/docker-compose.yml#L14) containers in docker-compose.yml.
* The [nginx configuration file](2.10_Fixing-buttons/nginx.conf) didn't change, but I uploaded it just in case.

I had a lot of trouble with this exercise and tried all sorts of things before I got all the buttons to work. I might have done some unnecessary things! Before uploading the files in this repository I removed the front and back images and ran `docker-compose up` to build the app from scratch, so I'm reasonably sure that the app at least works with the files as they are now.
