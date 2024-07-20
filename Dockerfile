FROM openjdk:11

# Đặt thư mục làm việc trong container
WORKDIR /app

# Sao chép file JAR của ứng dụng vào container
COPY target/jenkins-study-1.0-SNAPSHOT.jar /app/jenkins-study-1.0-SNAPSHOT.jar

# Đặt cổng mà ứng dụng sẽ sử dụng
EXPOSE 8089

# Chạy ứng dụng Java
CMD ["java", "-jar", "jenkins-study-1.0-SNAPSHOT.jar"]
