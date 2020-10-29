FROM maven:3.6.1-jdk-8
WORKDIR /usr/bankaccount
COPY pom.xml .
RUN mvn -B dependency:resolve dependency:resolve-plugins
COPY src ./src/
RUN mvn compile
EXPOSE 8080
CMD ["mvn", "spring-boot:run"]