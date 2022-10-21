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
    }
}
