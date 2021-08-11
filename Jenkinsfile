pipeline {
  environment {
    imagename = "indeximage:latest"
    registryCredential = 'budagamnaveen'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Building image') {
      steps{
        echo "Started building"
        script {
          dockerImage = docker.build imagename
        }
        echo "Ended building"
      }
    }
    stage('Deploy Image') {
      steps{
        echo "Started Deploying"
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push("$BUILD_NUMBER")
             dockerImage.push('latest')
          }
        }
        echo "Ended Deploying"
      }
    }
  }
}
