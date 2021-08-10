pipeline{
  agent any
  stages{
    stage('compile')
    {
      steps{
        script {
          docker build -t naveenimageapp:1.0 Dockerfile
          docker push naveenimageapp:1.0
        }
      }
    }
  }
}
