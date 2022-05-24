pipeline {
    environment{
        registry = "aerosouund/go-violin"
        dockerhubLogin= 'dockerhub_login'
    }

    agent any

    stages {

        stage('build image') {
            steps {
                script {
                    image = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }


        stage('push image') {
            steps {
                script {
                    docker.withRegistry( '', dockerhubLogin ) {
                        image.push()
                    }
                }
            }
        }

        stage('clean up') {
            steps {
                sh 'docker rmi $registry:$BUILD_NUMBER'
            }
        }
    }
}
