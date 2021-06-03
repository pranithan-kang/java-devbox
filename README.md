README
======

Purpose
---
I suffered from VSCode DevContainer for Java. I also tried VMWare with Ubuntu but it is not smooth as I thought. So, I decided to run the Docker container and using Remote Desktop Connection to access to the container and use it like DevContainer.

How to use
---
- Run the container using `docker-compose up -d`
- After the container started, use the Remote Desktop Connection in Windows to connect to `localhost:9999`
- Login with user: `ubuntu` and password: `ubuntu`
- Enjoy development!!

Credit
---
The docker file is initialized from [danielguerra/ubuntu-xrdp](https://github.com/danielguerra69/ubuntu-xrdp) git repo.
