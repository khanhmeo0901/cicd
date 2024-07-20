pipeline {
    agent any
    tools {
            maven 'Maven 3.9.2'
            jdk 'jdk11'
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
                         sh 'mvn -Dmaven.test.failure.ignore=true install'
                    }
                }

    }
}
