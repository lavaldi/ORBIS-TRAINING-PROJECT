pipeline {
    agent any
    environment {
        DISABLE_AUTH = 'true'
        DB_ENGINE    = 'sqlite'
    }
    stages {
        stage('build') {
            steps {
                sh 'make project-workspace'
                sh 'make docker-jenkins-install'
            }
        }
        stage('test') {
            steps {
                sh 'make jenkins-start'
            }
        }
        stage('deploy') {
            steps {
                sh 'make release'
                sh 'make deploy.ghpages'
            }
        }
    }
}