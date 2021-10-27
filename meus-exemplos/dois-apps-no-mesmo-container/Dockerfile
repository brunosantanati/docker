FROM ubuntu:latest
SHELL ["/bin/bash", "-c"]
COPY . /root
WORKDIR /root
RUN chmod +x start.sh
RUN ./start.sh
ENV JAVA_HOME /opt/jdk-17
WORKDIR /root/docker/meus-exemplos/dois-apps-no-mesmo-container/app2
RUN /root/apache-maven-3.8.3/bin/mvn clean install
WORKDIR /root/docker/meus-exemplos/dois-apps-no-mesmo-container/app2/target
ENTRYPOINT ["/opt/jdk-17/bin/java", "-jar", "app2-0.0.1-SNAPSHOT.jar"]
EXPOSE 8081
