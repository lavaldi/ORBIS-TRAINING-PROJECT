pipeline {
    agent any
    parameters {
        choice(
            name: 'DEPLOY',
            choices: ["gh-page","aws"],
            description: "Ambiente de despliegue"
        )
    }
    stages {
        stage('build') {
            steps {
                sh 'make delete-workspace'
                sh 'make project-workspace'
                sh 'make jenkins-install'
            }
        }
        stage('Test') {
            steps {
                sh 'make jenkins-start'
                sh 'make curl'
            }
        }
        stage('deploy') {
            steps {
                sh 'make jenkins-release'
                sh 'make deploy.ghpages'
            }
        }
    }
}