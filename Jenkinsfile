pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo this is build'
            }
        }
        stage('Test') {
            steps {
                sh 'echo this is test'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo this is deploy'
            }
        }
    }
    post   {
        always {
            echo "This section runs always"
        }
        success {
            echo "This section run when pipeline success"
        }
        failure { 
            echo {
                echo "This section run when pipeline failure"
            }
        }
    } 
}