pipeline {
    agent {
        docker { 
            image 'node:16.13.1-alpine'
        }
      }
//     tools {
//          maven 'maven'
//          jdk 'java'
//     }
    stages {
        stage('Stage-1 : Test') { 
            steps {
                sh 'node --version'
            }
        }

    }
}
