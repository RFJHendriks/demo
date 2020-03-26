FROM adoptopenjdk:11-jre-hotspot
RUN groupadd -r spring && useradd -r spring -g spring
USER spring:spring
ENTRYPOINT ["java","-cp","app:app/lib/*","hello.Application"]
