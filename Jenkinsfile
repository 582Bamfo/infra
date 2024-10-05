pipeline {
    agent any
    options {
        // Timeout counter starts AFTER agent is allocated
        timeout(time: 1, unit: 'HOURS')
    }
    stages {
        stage('JENKINS INITIAL STEP') {
            steps {
                echo 'Hello World'
            }
        }
        stage('GIT CHECKING IN') {
          steps{
            git branch: 'main', url:'https://github.com/582Bamfo/infra.git'
        
          }
        }
        stage('INITIALISATION') {
          steps{
            sh 'terraform init'
          }
        }
        stage('FORMATTING'){
          steps{
            sh 'terraform fmt'
          }
        }
        stage('PLANNING') {
          steps{
            sh 'terraform plan'
          }
        }
        stage(DEPLOYMENT) {
          steps{
            sh 'terraform destroy -auto-approve'
          }
        }
    }
}