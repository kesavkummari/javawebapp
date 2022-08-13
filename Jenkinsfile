node {
   def mvnHome
  stage('Prepare') {
      git url: 'https://github.com/kesavkummari/javawebapp.git', branch: 'javaops'
      mvnHome = tool 'maven'
    }

    stage('Clean'){
       sh '${mvnHome}/bin/mvn clean'
    }
    stage('Validate'){
        sh '${mvnHome}/bin/mvn validate'
    }
    stage('Compile'){
        sh '${mvnHome}/bin/mvn compile'
    }
    stage('Test'){
        sh '${mvnHome}/bin/mvn test -DskipTests'
    }
    stage('Package'){
        sh '${mvnHome}/bin/mvn package -DskipTests'
    }
    stage('Verfiy'){
        sh '${mvnHome}/bin/mvn verify -DskipTests'
    }
    stage('Install'){
        sh '${mvnHome}/bin/mvn install -DskipTests'
    }
}
