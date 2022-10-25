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
                sh 'clean install package'
            }
        }
        stage ("deployment") {
            steps {
                sshagent(['docker_daemon']) {
                    sh 'scp -o StrictHostKeyChecking=no webapp/target/*.war dockeradmin@3.91.242.178:/opt/docker'
                }  
            }
        }
    }
}
