# Javaビルド
FROM openjdk:17-alpine AS build
COPY src /src
WORKDIR /src
RUN javac com/example/test/App.java
RUN jar cvfm App.jar Manifest.txt com/example/test/*.class

# Java実行
FROM gcr.io/distroless/java17-debian11
COPY --from=build /src/App.jar /app/App.jar
WORKDIR /app
CMD ["App.jar"]
