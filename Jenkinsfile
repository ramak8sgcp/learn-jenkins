pipeline {
    agent {
        label 'AGENT-1'
    }
    options {
        // Timeout counter starts AFTER agent is allocated
        timeout(time: 30, unit: 'MINUTES')
        disableConcurrentBuilds()
    }
    stages {
        stage('Build') {
            steps {
                sh "echo this is Build"
               
            }
        }
        stage('Test') {
            steps {
                sh "echo this is Test"
                //
            }
        }
        stage('Deploy') {
            steps {
                sh "echo this is Deploy"
                // error 'pipeline failed'
                //
            }
        }
    }
    post {
        always {
            echo "This sections run always"
            deleteDir()
        }
        success {
            echo "This sections run when pipeline success"
        }
        failure {
            echo "This sections run when pipeline failure"
        }
    }
}