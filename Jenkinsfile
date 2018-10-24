node {
    def app
    
    stage('clone repo') {
         checkout scm
    }	
  
    stage('build image') {
	app = docker.build('jzoudocker/cicd-test-app')
    }

    stage('push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
        	app.push('latest')
	}
    }
}
