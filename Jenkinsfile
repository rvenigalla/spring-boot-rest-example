pipeline {
    agent any 
    stages {
        stage('build') {
            steps {
                sh 'docker build -t rajeshvenigalla/spring-boot-rest-example:v${BUILD_ID}'
            }
        }
		stage('push image') {
	        steps {
                sh 'docker push rajeshvenigalla/spring-boot-rest-example:v${BUILD_ID}'
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
                sh 'docker run -d -p 8083:8080 rajeshvenigalla/spring-boot-rest-example:v${BUILD_ID}'
            }
        }        
    }
}

