pipeline {
    environment{
        registry = "aerosouund/go-violin"
        dockerhubLogin= 'dockerhub_login'
    }

    agent any

    stages {
        //build the image with the build number appended and verify it exists
        stage('build image') {
            steps {
                script {
                    image = docker.build registry + ":latest"
                }
                sh 'if sudo docker image ls | grep $BUILD_NUMBER; then echo "SUCCESS"; else echo "FAILED TO BUILD IMAGE"; fi'
            }
        }

        //save the image on Dockerhub
        stage('push image') {
            steps {
                script {
                    docker.withRegistry( '', dockerhubLogin ) {
                        image.push()
                    }
                }
            }
        }

        //remove the built image from the server
        stage('clean up') {
            steps {
                sh 'docker rmi $registry:latest'
            }
        }
    }
}
