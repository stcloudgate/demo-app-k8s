

# performing multi-staged build

FROM adoptopenjdk/openjdk11

# run the dockerfile from code directory, no need to change the folder
# WORKDIR /workspace/app

# copy the maven bundle, pom and source codes
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

# clean any previous builds
# RUN ./mvnw clean

# run maven to build the package - outputs jar in target folder 
RUN ./mvnw install -DskipTests

# Set the variable JAR_FILE
ARG JAR_FILE=target/sbdemo-0.0.1-SNAPSHOT.jar

# cd /opt/app
WORKDIR /opt/app/

# copy the spademo.jar to /opt/app
COPY ${JAR_FILE} spademo.jar

# java -jar /opt/app/spademo.jar
ENTRYPOINT ["java","-jar","spademo.jar"]

