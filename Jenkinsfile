pipeline {
    agent {
        label 'AGENT-1'
    }
    options {
        // Timeout counter starts AFTER agent is allocated
        timeout(time: 10, unit: 'MINUTES')
        disableConcurrentBuilds()
        // retry(2)
    }

    environment {
        DEBUG = 'true'
    }

    parameters {
        string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')

        text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')

        booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')

        choice(name: 'CHOICE', choices: ['One', 'Two', 'Three'], description: 'Pick something')

        password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password')
    }
    stages {
        stage('print params'){
            steps {
                echo "Hello ${params.PERSON}"

                echo "Biography: ${params.BIOGRAPHY}"

                echo "Toggle: ${params.TOGGLE}"

                echo "Choice: ${params.CHOICE}"

                echo "Password: ${params.PASSWORD}"
            }
        }
    }
}
    stages {
        stage('Build') {
            steps {
                sh 'echo this is build'
                // sh 'sleep 10'
            }
        }
        stage('Test') {
            steps {
                sh 'echo this is test'
                sh 'env'
            }
        }
        stage('Deploy') {
            when {
                expression { env.GIT_BRANCH != "origin/main" }
            }
            steps {

                    sh 'echo This is deploy'
                    //error 'pipeline failed'

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