pipeline{
	agent any
	
	stages{
		stage('Checkout'){
			git 'https://github.com/VasanthaRaman/Jenkins_Simpler.git'
		}
		stage('Docker compose call'){
			sh 'docker-compose build .'
			sh 'docker-compose up -d'
		}
	}
}
