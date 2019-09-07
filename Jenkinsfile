pipeline {
    agent any

    stages {
        stage('Update pom.xml remote host address') {
            steps {
                sh('/usr/bin/ruby ./scripts/update_pom_address.rb localhost')
                sh('cat pom.xml')
            }
        }
        stage('Build') {
            steps {
                sh('mvn clean install')            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}