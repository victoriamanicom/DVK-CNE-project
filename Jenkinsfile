pipeline {
    agent any
    stages {
	stage('Build Images') {
	    steps {
		withCredentials([string(credentialsId: 'DATABASE__URI', variable: 'DATABASE_URI'), string(credentialsId: 'SECRET_KEY', variable: ''), string(credentialsId: 'DATABASE_PASSWORD', variable: '')]) {
		sh "docker-compose build"}
	    }
	}
	stage('Testing') {
	    steps {
		withCredentials([string(credentialsId: 'DATABASE__URI', variable: 'DATABASE_URI'), string(credentialsId: 'SECRET_KEY', variable: ''), string(credentialsId: 'DATABASE_PASSWORD', variable: '')]) {
		sh "cd frontend && python3 -m pytest --cov application --cov-report html"
		sh "cd backend && python3 -m pytest --cov application --cov-report html"}
	    }
	}
	stage('Deploy') {
	    steps {
		withCredentials([string(credentialsId: 'DATABASE__URI', variable: 'DATABASE_URI'), string(credentialsId: 'SECRET_KEY', variable: ''), string(credentialsId: 'DATABASE_PASSWORD', variable: '')]) {
		sh "docker-compose up -d"
		sh "docker-compose logs frontend"
		sh "docker-compose logs backend"}
	    }
	}
    }
    post {
	always {
	    archiveArtifacts artifacts: 'frontend/htmlcov/index.html, backend/htmlcov/index.html', followSymlinks: false
	}
    }
}
