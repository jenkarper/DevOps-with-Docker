# Part 1

1.1 [Getting started](screenshots/1.1_Getting_started.png)

1.2 [Cleanup](screenshots/1.2_Cleanup.png)

1.3 [Secret message](screenshots/1.3_Secret_message.png):

    docker run -d devopsdockeruh/simple-web-service:ubuntu
   
    docker container ls
   
    docker exec -it 8e9 tail -f ./text.log

    Secret message is: 'You can find the source code here: https://github.com/docker-hy

1.4 [Missing dependencies](screenshots/1.4_Missing_dependencies.png):

    docker exec -it angry_heisenberg bash

    --from container command line--

    apt-get update

    apt-get install curl

    sh -c 'echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;'

1.5 [Sizes of images](screenshots/1.5_Size_of_images.png)

1.6 [Hello Docker Hub](screenshots/1.6_Hello_DockerHub.png):

    docker run -it devopsdockeruh/pull_exercise
    
    Give me the password: basics
    
    You found the correct password. The secret message is:
    
    "This is the secret message"

1.7 Two-line Dockerfile: [Dockerfile](1.7_Two-line_Dockerfile/Dockerfile) and [commands](screenshots/1.7_Two-line_Dockerfile_commands.png):

    docker build . -t web-server
    
    docker run web-server

1.8 Image for script: [Dockerfile](1.8_Image_for_script/Dockerfile) and [commands](screenshots/1.8_Image_for_script.png):

    docker build . -t curler
    
    docker run -it curler

1.9 [Volumes](screenshots/1.9_Volumes.png):

    docker run -v "$(pwd)/text.log:/usr/src/app/text.log" devopsdockeruh/simple-web-service

1.10 [Ports open](screenshots/1.10_Ports_open.png):

    docker run -p 3000:8080 web-server

1.11 Spring: [Dockerfile](1.11_Spring/Dockerfile) and [browser message](screenshots/1.11_Spring_browser.png)

1.12 Hello, frontend!: [Dockerfile](1.12_Hello_frontend!/Dockerfile) and [command](screenshots/1.12_Hello_frontend_command.png):

    docker run -p 5000:5000 frontend
    
1.13 Hello, backend!: [Dockerfile](1.13_Hello_backend!/Dockerfile) and [command](screenshots/1.13_Hello_backend_command.png):

    docker run -p 8080:8080 backend
    
1.14 Environment: [frontend Dockerfile](1.14_Environment/frontend/Dockerfile), [backend Dockerfile](1.14_Environment/backend/Dockerfile) and [commands](screenshots/1.14_Environment.png):

    docker run -p 5000:5000 frontend
    docker run -p 8080:8080 backend
