pipeline {
    agent { label 'AGENT-1' }

    options {
        timeout(time: 10, unit: 'MINUTES')
        disableConcurrentBuilds()
    }

    stages {
        stage('Build') {
            steps {
                echo "Running Build Stage"
            }
        }

        stage('Test') {
            steps {
                echo "Running Test Stage"
            }
        }

        stage('Deploy') {
            steps {
                echo "Running Deploy Stage"
            }
        }
    }
}
