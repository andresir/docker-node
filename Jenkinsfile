pipeline {
	agent any

	stages {
		stage('check local time') {
			steps{
				sh "docker ps -a | grep jenkins"
				sh "date"
			}
		}
		// stage('Build') {
		// 	steps{
		// 		sh "docker build -t artifact.bitaloka.id/hellonode:latest ."
		// 	}
		// }
		// stage('Tag docker image') {
		// 	steps {
		// 		sh "docker tag artifact.bitaloka.id/hellonode:latest artifact.bitaloka.id/hellonode:latest"
		// 	}
		// }
		// stage('Push'){
		// 	steps{
		// 		script{
		// 			withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
		// 				// sh 'docker login -u registry -p ${dockerhubpwd} artifact.bitaloka.id'
		// 				sh "echo ${dockerhubpwd} | docker login -u registry --password-stdin artifact.bitaloka.id"
		// 			}
		// 			sh 'cat ~/.docker/config.json'
		// 			sh 'docker info'
		// 			sh 'docker images'
		// 			sh 'docker push artifact.bitaloka.id/hellonode:latest'
		// 		}
		// 	}
		// }
	}
	// post {
	// 	always {
	// 		script {
	// 			// Logout dari Docker registry
	// 			sh 'docker logout artifact.bitaloka.id'
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
	// 	}
	// }
}
