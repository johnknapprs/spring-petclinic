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
        NEXUS_ADMIN_USERNAME = 'admin'
        NEXUS_ADMIN_PASSWORD = 'admin123'
    }
    stages {
        stage('Build') {
            steps {
                sh('mvn clean install')
            }
        }
        stage('Update Junit Dependency') {
            when {
                expression {
                    return params.DEPLOY_JUNIT_UPDATE
                }
            }
            steps {
                sh('mvn versions:use-latest-versions -DallowSnapshots=true -Dincludes=junit')
            }
        }
        stage('Deploy') {
            when {
                expression {
                    return params.DEPLOY_NEXUS_BUILD
                }
            }
            steps {
                sh('mvn -s ./settings.xml deploy')
            }
        }
    }
}
