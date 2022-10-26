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
                sshagent(['af798cd6-93d4-400b-88c0-6a1bd34f14a2']) {
                    sh 'scp -o StrictHostKeyChecking=no webapp/target/webapp.war ubuntu@3.91.242.178:/opt/docker' && sh 'touch test1.txt'
                } 
            }
        }
    }
}
