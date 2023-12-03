pipeline {
    agent any
    parameters {
        choice(choices: ['all', 'final', 'clean'], name: 'MAKE')
    }
    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', 
                url: 'https://github.com/Narendrakaduru/hello-c.git'
            }
        }
        stage('Run Make') {
            steps {
                sh 'make $MAKE'
            }
        }
    }
}
