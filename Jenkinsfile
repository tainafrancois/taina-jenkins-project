pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhubLogin')
        IMAGE_NAME = "tainafrancois/taina-jenkins-project"
    }

    stages {

        stage('Taina - Build Docker Image') {
            steps {
                script {
                    sh "docker build -t ${IMAGE_NAME} ."
                }
            }
        }

        stage('Taina - Login to Dockerhub') {
            steps {
                script {
                    sh "echo ${DOCKERHUB_CREDENTIALS_PSW} | docker login -u ${DOCKERHUB_CREDENTIALS_USR} --password-stdin"
                }
            }
        }

        stage('Taina - Push image to Dockerhub') {
            steps {
                script {
                    sh "docker push ${IMAGE_NAME}"
                }
            }
        }
    }
}