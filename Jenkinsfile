pipeline {
    agent any
    stages {
        stage("init") {
            steps {
              echo "initializing"
            }
        }
        stage("build") {
            steps {
              echo "building"
            }
        }
        stage("test") {
            steps {
              echo "testing"            
            }
        }
        stage("deploy") {
            steps {
              echo "deploying"            
            }         
        }
    }
    post {
        always{
            echo "Run this always"
        }
        failure{
            echo "On failure"
        }
    }
    
}

