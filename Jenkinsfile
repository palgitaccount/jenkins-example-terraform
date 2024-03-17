pipeline {
  agent { label 'node01'}
  options {
    skipDefaultCheckout(true)
  }
  stages{
    stage('clean workspace') {
      steps {
        cleanWs()
      }
    }
    stage('checkout') {
      steps {
        checkout scm
      }
    }
    stage('terraform') {
      steps {
        sh 'terraform init'
        sh 'terraform plan'
        sh 'terraform apply -auto-approve -no-color'
      }
    }
  }
//  post {
//    always {
//      cleanWs()
//    }
//  }
}
