node {
   def mvnHome
   stage('Prepare') {
      git url: 'git@github.com/kesavkummari/javawebapp.git', branch: 'rrtech-qa'
      mvnHome = tool 'maven'
   }

  stage ('Clean') {
      sh "'${mvnHome}/bin/mvn' -Dmaven.test.failure.ignore clean"
    }
  }
  stage ('Validate') {
      sh "'${mvnHome}/bin/mvn' -Dmaven.test.failure.ignore validate"
  }
}
