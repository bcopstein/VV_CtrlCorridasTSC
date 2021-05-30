FROM maven:3.8.1-openjdk-15
COPY ./target/ctrlcorredor_v8-0.0.1-SNAPSHOT.jar .
EXPOSE 8080
CMD ["java","-jar","ctrlcorredor_v8-0.0.1-SNAPSHOT.jar"]
#CMD ["/bin/bash"]
