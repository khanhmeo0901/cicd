pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                // Clone the repository
                git branch: 'develop', url: 'https://github.com/khanhmeo0901/cicd.git'
            }
        }
         stage('Clone Repository') {
              steps {
                 withDockerRegistry(url: 'https://index.docker.io/v1/') {
                 sh 'docker build -t nguyenkhanh9900/company:jenkins-study .'
                 sh 'docker push nguyenkhanh9900/company:jenkins-study'
                       }
                    }
                }
    }
}
