pipeline {
    agent any 
    tools {
        maven 'maven',
        jdk 'java8'
    }
    stages {
        stage('build') {
            steps {
                bat 'mvn clean package -DskipTests=true'
            }
        }
    }
}

