FROM maven:3.8.5-openjdk-17

ARG VERSION_SUFFIX

COPY settings.xml /root/.m2/settings.xml

COPY pom.xml .
COPY src ./src

RUN mvn -U deploy -DskipTests -Dversion.suffix=$VERSION_SUFFIX
