pipeline {
	agent any

	stages {
		stage('Build') {
			steps{
				sh "docker build -t artifact.bitaloka.id/hellonode:latest ."
			}
		}
		stage('Tag docker image') {
			steps {
				sh "docker tag artifact.bitaloka.id/hellonode:latest artifact.bitaloka.id/hellonode:latest"
			}
		}
		stage('Push'){
			steps{
				script{
					withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
						sh 'docker login -u registry -p ${dockerhubpwd} artifact.bitaloka.id'
					}
					sh 'docker push artifact.bitaloka.id/hellonode:latest'
				}
			}
		}
	}
}
