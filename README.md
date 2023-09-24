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

5. **Keycloak 22.0.3** (Latest version at September 18th, 2023): You can download the keycloak server by [this link](https://www.keycloak.org/downloads).

6. **PostgreSQL with PgAdmin:** you can download to install PostgreSQL and pgAdmin for the database manage official website

## Usage

To use the program you must do:

1. Open a terminal in the folder where you want to download the program and clone it with:

   ```
   git clone https://github.com/BPMN-sw-evol/MSGF-IdentityService.git
   ```

2. Download the **keycloak server (.zip file)** in the path of you choice and unzip it. [official website](https://www.keycloak.org/downloads).

3. Inside the server folder (keycloak-22.0.1 in my case) inside the conf folder modify the file named keycloak.conf with the help of a text editor to configure the PostgreSQL database and the default port 9090:

   ```
    # Database

    db=postgres
    db-username=postgres
    db-password=admin
    db-url=jdbc:postgresql://localhost/keycloak

    # HTTP

    http-port=9090
   ```

4. Run keycloak server (development mode) with:
     ```
     .\kc.bat start-dev
     ```
5. Now run the program on spring boot running on port 8080 with the help of IntelliJ IDEA.

6. When you are running the keycloak server (port 9090) and the Spring Boot application (port 8080) you can already manage the realms, users and roles. If you need help to create realms, users and roles you can be guided by [this video](https://youtu.be/zR3igUft1KA?t=443) between minute 7:23 and 29:44.

7. To communicate both services (keycloak and spring boot) you can use these endpoints:
    - Get a new JWT (Json Web Token):
        ```
        http://localhost:9090/realms/<YOU_REALM>/protocol/openid-connect/token
        ```
    - Create a new user:
        ```
        http://localhost:8080/keycloak/user/create
        ```
    - Find all the users in the system:
        ```
        http://localhost:8080/keycloak/user/search
        ```
    - Find an user by username:
        ```
        http://localhost:8080/keycloak/user/search/test
        ```
    - Delete an user by Keycloak ID:
        ```
        http://localhost:8080/keycloak/user/delete/USER_ID_IN_KEYCLOAK
        ```
    
    
