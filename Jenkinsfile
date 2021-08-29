pipeline{
	agent any
	
	stages{
		stage('Checkout'){
			steps{
			git 'https://github.com/VasanthaRaman/Jenkins_Simpler.git'
			}
		}
		stage('Docker compose call'){
			steps{
			docker-compose build .
			sh 'docker-compose up -d'
			}
		}
	}
}
