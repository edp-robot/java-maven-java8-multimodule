FROM public.ecr.aws/docker/library/openjdk:8-slim
COPY ./target/*.jar /home/app.jar
CMD ["java","-jar","/home/app.jar"]
