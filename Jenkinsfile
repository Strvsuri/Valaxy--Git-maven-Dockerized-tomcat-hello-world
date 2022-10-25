pipeline {
    agent any
    stages {
        stage ("Git checkout") {
            steps {
                git 'https://github.com/Strvsuri/Valaxy--Git-maven-Dockerized-tomcat-hello-world/'
            }
        }
        stage ("Maven build") {
            steps {
                sh 'mvn clean install'
            }
        }
        stage ("deployment") {
            steps {
                sshagent(['ssh_user']) {
                    sh 'scp -o StrictHostKeyChecking=no webapp/target/*.war dockeradmin@3.91.242.178:/opt/docker'
                }  
            }
        }
    }
}
