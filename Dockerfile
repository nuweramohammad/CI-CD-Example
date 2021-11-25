FROM gradle:jdk11 AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle --no-daemon bootJar
FROM openjdk:11
RUN mkdir /app
COPY --from=build /home/gradle/src/build/libs/*.jar /app/spring-boot-application.jar
ENV PORT=8080
EXPOSE ${PORT}
CMD ["java","-jar", "-Xmx4g", "/app/spring-boot-application.jar"]
