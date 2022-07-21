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
     timeout(time: 600, unit: 'SECONDS') {
     input message: 'Waiting for Deployment approval', ok: 'Approve', submitter: 'admin', submitterParameter: 'approved_users'
  }
                sh 'cp target/spring-boot-rest-example-0.5.0.war /opt/apache-tomcat-9.0.63/webapps/'
            }
        }        
    }
}
