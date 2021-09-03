pipeline {
    agent any
    environment {
	DATABASE_URI = credentials('DATABASE_URI')
	SECRET_KEY = credentials('SECRET_KEY')
	DATABASE_PASSWORD = credentials('DATABASE_PASSWORD')
    }
    stages {
	stage('Build Images') {
	    steps {
		sh "docker-compose build"
	    }
	}
	stage('Testing') {
	    steps {
		sh "cd frontend && python3 -m pytest --cov application --cov-report html"
		sh "cd backend && python3 -m pytest --cov application --cov-report html"
	    }
	}
	stage('Deploy') {
	    steps {
		sh "docker-compose up -d"
		sh "docker-compose logs frontend"
		sh "docker-compose logs backend"
	    }
	}
    }
}
