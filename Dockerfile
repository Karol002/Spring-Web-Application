# https://spring.io/guides/gs/spring-boot-docker/
FROM openjdk:17-jdk-alpine

ARG MYSQL_DB_URL
ENV MYSQL_DB_URL ${MYSQL_DB_URL?notset}
WORKDIR /usr/src/app

COPY . .

RUN addgroup -g 1001 -S appuser && adduser -u 1001 -S appuser -G appuser
RUN chown -R 1001:1001 /home/karol/GitHub/tasks
RUN ls
USER 1001

EXPOSE 8080
RUN cat  /home/karol/GitHub/tasks/src/main/resources/application-mogenius.properties >  /home/karol/GitHub/tasks/src/main/resources/application.properties
RUN chmod +x gradlew
RUN echo ${MYSQL_DB_URL}
RUN ./gradlew build -PMYSQL_DB_URL="jdbc:${MYSQL_DB_URL}"

ENTRYPOINT ["java","-jar","/home/karol/GitHub/tasks/build/libs/tasks-0.0.1-SNAPSHOT.jar"]