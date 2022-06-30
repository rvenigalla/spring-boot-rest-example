pipeline {
    agent any 
    tools {maven 'maven' 
           jdk 'java8'}
    stages {
        stage('build') {
            steps {
                bat 'mvn clean package -DskipTests=true'
            }
        }
        stage('Deploy') {
            steps {
                bat 'copy C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\Springboot_pipeline\\target\\spring-boot-rest-example-0.5.0.war "C:\\Program Files\\Apache Software Foundation\\Tomcat 10.0\\webapps\\"'
            }
        }        
    }
}

