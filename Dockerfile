FROM maven:3.9.11-eclipse-temurin-17-alpine
RUN mkdir /usr/src/project
COPY . /usr/src/project
WORKDIR /usr/src/project
RUN mvn package -DskipTests
CMD mvn spring-boot:run
EXPOSE 8081
