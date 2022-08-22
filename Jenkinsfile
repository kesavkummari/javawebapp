pipeline {
    agent any 
    docker { 
        image 'maven:3.8.1-adoptopenjdk-11'
        args '-v $HOME/.m2:/root/.m2'
      }
    tools {
         maven 'maven'
         jdk 'java'
    }
    stages {
        stage('Stage-1 : Build') { 
            steps {
                sh 'mvn install -DskipTests'
            }
        }

    }
}
