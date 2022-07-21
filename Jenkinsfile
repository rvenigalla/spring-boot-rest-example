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
        stage('Dev Approval') {
            steps {
     emailext attachLog: true, body: '''Please approve $BUILD_URL''', subject: 'Request for Deployment Approval', to: 'rajeshvenigalla2228@gmail.com'   
     timeout(time: 600, unit: 'SECONDS') {
     input message: 'Waiting for Deployment approval', ok: 'Approve', submitter: 'admin', submitterParameter: 'approved_users'
                }          
            }
        } 
        stage('Deploy') {
            steps {
                sh 'cp target/spring-boot-rest-example-0.5.0.war /opt/apache-tomcat-9.0.63/webapps/'
            }
        }        
    }
}
