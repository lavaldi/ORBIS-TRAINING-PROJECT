pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'make delete-workspace'
                sh 'make project-workspace'
                sh 'make jenkins-install'
            }
        }
        // stage('test') {
        //     steps {
        //         sh 'make jenkins-start'
        //     }
        // }
        stage('deploy') {
            steps {
                sh 'make jenkins-release'
                // sh 'make deploy.ghpages'
            }
        }
    }
}