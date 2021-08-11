pipeline {
  environment {
    dockerImage = ''
  }
  agent any
  stages {
    stage('Building image') {
      steps{
        echo "Started building"
        script {
          dockerImage = docker.build 'indeximage'
        }
        echo "Ended building"
      }
    }
    stage('Deploy Image') {
      steps{
        echo "Started Deploying"
        script {
          docker.withRegistry( '', 'budagamnaveen' ) {
            dockerImage.push("$BUILD_NUMBER")
             dockerImage.push('latest')
          }
        }
        echo "Ended Deploying"
      }
    }
  }
}
