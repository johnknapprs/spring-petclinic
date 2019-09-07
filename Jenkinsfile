pipeline {
    // No agent required for simple job
    agent any

    stages {
        // This is where we run mvn clean install
        stage('Build') {
            steps {
                sh('mvn clean install')
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}