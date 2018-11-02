pipeline {

    agent { label "build" }

    stages {
        stage("checkout") {
            steps {
                checkout scm
            }
        }
    
        stage("build docker image") {
            steps {
                sh "sudo docker build -t java ."
            }
        }
        
        stage("Launch service") {        
            steps {
                sh "sudo docker rm java"
                sh "sudo docker run -d --name java java "
            }

        } 


    }
 }

