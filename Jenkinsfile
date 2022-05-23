pipeline {

    agent any

    stages {
        stage("install dependencies"){

        }


        stage("pull repo") {
            steps {
                sh "git clone https://github.com/aerosouund/GoViolin.git"
                sh " if ls | grep GoViolin; 
                        echo "Sucess";
                    else 
                        echo "Failed to clone repo"
                    fi"
            }
        }
    }
}
