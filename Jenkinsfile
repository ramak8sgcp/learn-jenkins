pipeline {
    agent {
        label 'AGENT-1'
    stages {
        options{
            timeout(time: 10, unit: 'MINUTES')
            disableConcurrentBuilds()
            //retry(1)
        }
        stage('Build') {
            steps {
                sh 'echo This is Build'
                //sh 'sleep 10'
            }
        }
        stage('Test') {
            steps {
                sh 'echo This is test-1'
                sh 'env'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo This is deploy'
                    //error 'pipeline failed'

            }
        }
        
    }

    post {
        always{
            echo "This sections runs always"
            deleteDir()
        }
        success{
            echo "This section run when pipeline success"
        }
        failure{
            echo "This section run when pipeline failure"
        }
    }
}

