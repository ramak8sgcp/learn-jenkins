pipeline {
    agent {
        label 'AGENT-1'
    }
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
                // error 'pipeline failed'
            }
        }
    }
    post   {
        always {
            echo "This section runs always"
            deleteDir()
        }
        success {
            echo "This section run when pipeline success"
        }
        failure { 
           
            echo "This section run when pipeline failure"
            
        }
    } 
}