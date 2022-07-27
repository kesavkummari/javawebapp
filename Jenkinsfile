node {
  stage ('Download the Source Code & Clean') {
    git url: 'https://github.com/kesavkummari/javawebapp.git'
    withMaven {
      sh "mvn clean"
    }
  }
  stage ('Validate') {
    withMaven {
      sh "mvn Validate"
    }
  }
}
