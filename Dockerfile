# get the base maven image
FROM maven:3.8.6-openjdk-8 as mvn


# copy other project files
COPY . .

# build the folder
RUN mvn clean package

# Handle Tomcat

FROM tomcat:7
COPY --from=mvn /target/*.war /usr/local/tomcat/webapps/
