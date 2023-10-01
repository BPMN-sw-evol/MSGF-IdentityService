#  MSGF-IDENTITY-SERVICE

This repository implements the **keycloak** technology in its version 22.0.3 together with an application Spring Boot for the authentication and authorization related to the management of domains (realm), roles and users that the service provides. Both the keycloak schema and the information generated from its operation are stored in a PosgreSQL database.


## Index

1. [Description](#description)
2. [Prerequisites](#prerequisites)
3. [Usage](#usage)


## Description

[Spring initializr](https://start.spring.io/) is a tool that facilitates the creation of Spring Boot projects that integrate several dependencies as Spring Data JPA, Spring Web, Spring Security, Oauth2, Lombok, Thymeleaf, DevTools and keycloak dependencies (keycloak-admin-client, resteasy-jaxrs). Spring Boot is a development framework that simplifies the creation of Web applications in Java.

This module is used exclusively for the authentication and authorization of users and what it implies.


## Prerequisites

To use this program you need the following:

1. **Version control system**: Install GIT from the [GIT official website](https://git-scm.com/downloads).


2. **IntelliJ IDEA**: To run and/or modify the project, you can download it from the [IntelliJ official website](https://www.jetbrains.com/es-es/idea/download/?section=windows).

3. **Java 17 or higher**: You can get help to download and install the java version by following [this link](https://www.youtube.com/watch?v=oAin-q1oTDw&pp=ygUXY29tbyBjb25maWd1cmFyIGphdmEgMTc%3D)

4. **Maven 3.9**: You can get help to download and install the maven version by following [this link](https://www.youtube.com/watch?v=1QfiyR_PWxU&pp=ygUSaW5zdGFsYXIgbWF2ZW4gMy45)

5. Docker Desktop: To use Docker correctly follow the steps below:

   - **Step 1:** Install Docker from the official website.(If you already have Docker Desktop installed, skip this step).
   - **Step 2:** Create a Docker Hub account from the official website, and log in to Docker Desktop. (If you already have an account, log in directly to Docker Desktop) WSL2: According to your need:
   Use the following command to install WSL2 wsl --list --o to know the available distributions. wsl --install -d "distribution-version" to install WSL2 with a specific distribution. Use the following command for upgrade to WSL2 wsl --version if you want to know the installed WSL version wsl --set-default-version 2 to change the version to WSL2.
5. **Keycloak 22.0.3** (Latest version at September 18th, 2023): You can download the keycloak server by [this link](https://www.keycloak.org/downloads) or use the docker image:
   ```
   docker run -p 8080:8080 -e KEYCLOAK_ADMIN=admin -e KEYCLOAK_ADMIN_PASSWORD=admin quay.io/keycloak/keycloak:22.0.3 start-dev 
   ```
6. **PostgreSQL with PgAdmin:** you can download to install PostgreSQL and pgAdmin for the database manage official website

## Usage

To use the program you must do:

1. Open a terminal in the folder where you want to download the program and clone it with:

   ```
   git clone https://github.com/BPMN-sw-evol/MSGF-IdentityService.git
   ```

3. Inside the Spring Boot project folder create a .env file with the following info:

   ```
   DB_USERNAME=postgres
   DB_PASSWORD=admin
    
   KEYCLOAK_ADMIN=admin
   KEYCLOAK_ADMIN_PASSWORD=admin
   ```

4. Run the project with:
     ```
     docker-compose up
     ```
5. Now the keycloak server is running on port 9001 and the spring boot project is running on port 9002 (this may take a few seconds).
