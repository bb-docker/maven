FROM openjdk:18

ARG MAVEN_VERSION=3.8.8
ARG USER_HOME_DIR="/root"

COPY apache-maven.tar.gz /tmp/apache-maven.tar.gz

RUN mkdir -p /usr/share/maven /usr/share/maven/ref \
 && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1 \
 && rm -f /tmp/apache-maven.tar.gz \
 && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

ENV MAVEN_HOME /usr/share/maven
ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["/bin/bash"]