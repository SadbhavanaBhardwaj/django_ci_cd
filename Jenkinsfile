pipeline {

	agent any
	stages {
		stage("setup virtual env"){
			steps{
				sh '''
            			chmod +x envsetup.sh
            			./envsetup.sh
            			'''
			}
		}
		stage("gunicorn setup"){
			steps{
				sh '''
				chmod +x gunicorn.sh
				./gunicorn.sh
				'''
			}
		}
		stage("nginx setup"){
			steps{
				sh '''
				chmod +x nginx.sh
				./nginx.sh
				'''
			}
		}
	}
}
