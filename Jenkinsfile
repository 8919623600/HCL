pipeline {
    agent any

    environment {
        IMAGE_NAME = "my-node-app"
        IMAGE_TAG  = "latest"
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh "docker build -t ${IMAGE_NAME}:${IMAGE_TAG} ."
                }
            }
        }

        stage('Print Image Name') {
            steps {
                echo "Docker Image Built: ${IMAGE_NAME}:${IMAGE_TAG}"
            }
        }
    }
}
