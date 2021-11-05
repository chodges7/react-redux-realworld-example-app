
pipeline {
    agent any
    environment {
        DOCKER_USER = credentials('docker-user')
        DOCKER_PASS = credentials('docker-pass')
    }
    stages {
        stage('Login') {
            steps {
                echo 'Logging in to docker hub...'
                sh 'docker login -u $DOCKER_USER -p $DOCKER_PASS'
            }
        }
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'docker build -t $DOCKER_USER/realworld_frontend:latest ./'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                sh 'docker push $DOCKER_USER/realworld_frontend:latest'
            }
        }
    }
}
