pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh "echo this is Build"
                //
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
                //
            }
        }
    }
    post {
        always {
            echo "This sections run always"
        }
        success {
            echo "This sections run when pipeline success"
        }
        failure {
            echo "This sections run when pipeline failure"
        }
    }
}