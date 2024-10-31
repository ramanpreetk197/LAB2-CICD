pipeline {
    agent any
    triggers {
        pollSCM('H/5 * * * *') 
    }
    stages {
        stage('Checkout') {
            steps {
                // Cloning the GitHub repository
                git branch: 'main', url: 'https://github.com/ramanpreetk197/LAB2-CICD.git', credentialsId: 'GitHub_PAT12'
            }
        }
        stage('Build') {
            steps {
                echo 'Building the application...'
                // Add any build commands here
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
                // Add test commands or scripts here
            }
        }
    }
    post {
        success {
            echo 'Build and tests succeeded!'
        }
        failure {
            echo 'Build or tests failed.'
        }
    }
}
