pipeline {
    agent any

    parameters {
        booleanParam(
            name: 'DEPLOY_NEXUS_BUILD',
            defaultValue: true,
            description: 'Deploy artifacts to Nexus'
        )
    }
    stages {
        stage('Build') {
            steps {
                sh('mvn clean install')
            }
        }
        stage('Deploy') {
            when {
                expression {
                    return params.DEPLOY_NEXUS_BUILD
                }
            }
            steps {
                sh('mvn deploy')
            }
        }
    }
}
