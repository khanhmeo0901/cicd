pipeline {
    agent any

     environment {
            DOCKER_CREDENTIALS_ID = 'dockerhub-credentials'
        }

    stages {
        stage('Clone Repository') {
            steps {
                // Clone the repository
                git branch: 'develop', url: 'https://github.com/khanhmeo0901/cicd.git'
            }
        }
         stage('Build docker') {
              steps {
                 withDockerRegistry(credentialsId: 'jenkins-study', url: 'https://index.docker.io/v1/') {
                 // sh 'docker build -t nguyenkhanh9900/company:jenkins-study .'
                // sh 'docker push nguyenkhanh9900/company:jenkins-study'
                       }
                    }
                }
    }
}
