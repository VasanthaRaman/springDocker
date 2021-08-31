pipeline{
	agent any
	
	stages{
		stage('Checkout'){
			steps{
			git 'https://github.com/VasanthaRaman/springDocker.git'
			}
		}
		stage('Docker compose call'){
			steps{
			 	sh 'docker-compose build'
			 	sh 'docker-compose up -d'
			}
		}
	}
}
