pipeline {
    agent any 
    tools {maven 'maven' 
           jdk 'java8'}
    stages {
        stage('build') {
            steps {
                sh 'mvn clean package -DskipTests=true'
            }
        }
        stage('Deploy') {
            steps {
                sh 'cp target/spring-boot-rest-example-0.5.0.war /home/ec2-user/apache-tomcat-9.0.63/webapps/'
            }
        }        
    }
}
