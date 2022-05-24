pipeline {
    environment{
        registry = "aerosouund/go-violin"
    }

    agent any

    stages {


        stage('build image') {
            steps {
                script {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
    }
}
