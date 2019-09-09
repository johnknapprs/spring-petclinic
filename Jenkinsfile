pipeline {
    agent any

    parameters {
        booleanParam(
            name: 'DEPLOY_JUNIT_UPDATE',
            defaultValue: false,
            description: 'Deploy with updated Junit artifact'
        )    
        booleanParam(
            name: 'DEPLOY_NEXUS_BUILD',
            defaultValue: true,
            description: 'Deploy artifacts to Nexus'
        ) 
    }

    environment {
        // Nexus credentials accessed in project settings.xml
        NEXUS_ADMIN_USERNAME = credentials('NEXUS_ADMIN_USERNAME')
        NEXUS_ADMIN_PASSWORD = credentials('NEXUS_ADMIN_PASSWORD')
    }
    stages {
        stage('Update pom.xml remote host address') {
            steps {
                sh('/usr/bin/ruby ./scripts/update_pom_address.rb localhost')
            }
        }
        stage('Build') {
            steps {
                sh('/usr/bin/mvn clean install')            
            }
        }
        stage('Update Junit Dependency') {
            steps {
                when {
                    expression {
                        return params.DEPLOY_JUNIT_UPDATE
                    }
                }
                sh('/usr/bin/mvn versions:use-latest-versions -DallowSnapshots=true -Dincludes=junit')
            }
        }
        stage('Deploy') {
            when {
                expression {
                    return params.DEPLOY_NEXUS_BUILD
                }
            }
            steps {
                sh('/usr/bin/mvn -s ./settings.xml deploy')
            }
        }
    }
}