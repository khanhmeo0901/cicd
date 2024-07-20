pipeline {
    agent any

    environment {
            // Định nghĩa biến môi trường (nếu cần)
            DOCKER_IMAGE_TAG = "khanh:v1"
        }

    stages {
        stage('Clone Repository') {
            steps {
                // Clone the repository
                git branch: 'develop', url: 'https://github.com/khanhmeo0901/cicd.git'
            }
        }

        stage('Build Maven') {
              steps {
                // Build maven
                sh 'mvn clean install -DskipTests=false'
              }
        }

         stage('Build Docker Image') {
                     steps {

                         script {
                             def dockerImage = docker.build("${DOCKER_IMAGE_TAG}", ".")
                             dockerImage.push() // Đẩy Docker image lên Docker registry (nếu cần)
                         }
                     }
                 }

                 stage('Run Docker Container') {
                     steps {

                         script {
                             docker.image("${DOCKER_IMAGE_TAG}").run('-p 8089:8081')  // Ánh xạ cổng 8081 trong container vào cổng 8089 trên máy host
                         }
                     }
                 }
    }
}
