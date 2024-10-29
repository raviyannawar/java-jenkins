pipeline {
    agent any
    environment{
        Test_Var = "Value1"
        CRED = credentials('gitlab_jenkinsuser')
    }
    stages {
        stage("init") {
            steps {
              withCredentials([
                      usernamePassword(credentials:'gitlab_jenkinsuser', userVar: USER,  pwdVar : PWD)
                  ]){
                
                  echo "initializing" +  "$userVar" + "$pwdVar"
              }
              
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

