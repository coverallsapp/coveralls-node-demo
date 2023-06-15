pipeline {
  agent any
  stages {
    stage('Setup') {
      steps {
        sh 'npm ci'
      }
    }
    stage('Build') {
      steps {
        sh 'npm test && npm run upload-coverage'
      }
    }
  }
  environment {
    COVERALLS_SERVICE_NAME = 'jenkins-enterprise'
    COVERALLS_ENDPOINT = 'https://enterprise-demo-2.coveralls.io'
    COVERALLS_REPO_TOKEN = '28UDAfZuU4tUkByo1CjvzTkFZz4LxB8o6'
    CI = 'true'
    CI_BRANCH = '$BRANCH_NAME'
    CI_BUILD_NUMBER = '$BUILD_NUMBER'
  }
}
