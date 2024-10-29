pipeline {
    agent any
    environment{
        Test_Var = "Value1"
    }
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
              echo "testing"+ "$Test_Var"
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

