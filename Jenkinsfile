pipeline {

    agent any

    stages {


        stage('build image') {
            steps {
                sh 'sudo docker build -t go-violin .'
                sh 'if docker image ls | grep violin; then echo "SUCCESS"; else echo "FAILED TO BUILD IMAGE"; fi'
            }
        }
    }
}
