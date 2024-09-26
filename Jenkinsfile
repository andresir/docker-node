pipeline {
	agent any

	stages {
		stage('Del') {
			steps{
				sh "docker image ls"
				sh "docker rmi dev-rtsm.ottopay.id/hellonode:latest"
			}
		}
	// 	stage('Build') {
	// 		steps{
	// 			sh "docker build -t dev-rtsm.ottopay.id/hellonode:latest ."
	// 		}
	// 	}
	// 	stage('Push'){
	// 		steps{
	// 			script{
	// 				sh "docker tag dev-rtsm.ottopay.id/hellonode:latest dev-rtsm.ottopay.id/hellonode:latest"
	// 				withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
	// 					// sh "docker login -u registry -p ${dockerhubpwd} dev-rtsm.ottopay.id"
	// 					sh "echo '123456' | docker login -u admin --password-stdin dev-rtsm.ottopay.id"
	// 				}
	// 				// sh "cat ~/.docker/config.json"
	// 				// sh "docker info"
	// 				sh "docker push dev-rtsm.ottopay.id/hellonode:latest"
	// 			}
	// 		}
	// 	}
	// }
	// post {
	// 	always {
	// 		script {
	// 			// Logout dari Docker registry
	// 			sh "docker logout dev-rtsm.ottopay.id"
	// 			echo "Docker logout completed."
	// 		}
	// 	}
	// 	success {
	// 		script {
	// 			echo "Pipeline berhasil: ${currentBuild.fullDisplayName}"
	// 		}
	// 	}
	// 	failure {
	// 		script {
	// 			echo "Pipeline gagal, mohon periksa log untuk lebih detail."
	// 		}
	// 	}//
	}
}
