pipeline {
    agent any
    triggers {
        // Uncomment the line below if you choose the polling approach
        // pollSCM('H/5 * * * *') 
    }
    stages {
        stage('Checkout') {
            steps {
                // Cloning the GitHub repository
                git branch: 'main', url: 'https://github.com/ramanpreetk197/LAB2-CICD.git', credentialsId: 'GitHub_PAT'
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
