pipeline {
	agent any

	environment {
		REGISTRY = 'artifact.bitaloka.id'
	}

	stages {
		stage('Build') {
			steps{
				sh "docker build -t ${env.REGISTRY}/hellonode:latest ."
			}
		}
		stage('Tag docker image') {
			steps {
				sh "docker tag ${env.REGISTRY}/hellonode:latest ${env.REGISTRY}/hellonode:latest"
			}
		}
		stage('Push'){
			steps{
				script{
					withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
						sh 'docker login -u registry -p ${dockerhubpwd} ${env.REGISTRY}'
					}
					sh 'docker push ${env.REGISTRY}/hellonode:latest'
				}
			}
		}
	}
}
