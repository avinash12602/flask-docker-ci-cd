pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/avinash12602/flask-docker-ci-cd.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t flask-app .'
            }
        }

        stage('Stop and Remove Old Container') {
            steps {
                sh 'docker stop flask-app || true && docker rm flask-app || true'
            }
        }

        stage('Run New Container') {
            steps {
                sh 'docker run -d -p 5000:5000 --name flask-app flask-app'
            }
        }
    }
}
