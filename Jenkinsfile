pipeline {

    agent any

    stages {


        stage('build image') {
            steps {
                sh 'sudo docker build -t go-violin .'
            }
        }
    }
}
