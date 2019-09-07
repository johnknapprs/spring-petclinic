pipeline {
    agent any

    environment {
        // Nexus credentials accessed in project settings.xml
        NEXUS_ADMIN_USERNAME = credentials('NEXUS_ADMIN_USERNAME')
        NEXUS_ADMIN_PASSWORD = credentials('NEXUS_ADMIN_USERNAME')
    }
    stages {
        stage('Update pom.xml remote host address') {
            steps {
                sh('/usr/bin/ruby ./scripts/update_pom_address.rb localhost')
            }
        }
        stage('Build') {
            steps {
                sh('/usr/bin/mvn clean install')            }
        }
        stage('Deploy') {
            steps {
                sh('/usr/bin/mvn -s ./settings.xml deploy')
            }
        }
    }
}