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
                      usernamePassword(credentials:'gitlab_jenkinsuser', usernameVariable: 'USERNAME',  passwordVariable : 'PASSWORD')
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
              
              echo PASSWORD
              //Available as env variable
              sh 'echo $USERNAME'
              //Available as groovy variable
              echo USERNAME 
              // String 
              echo "Test $USERNAME"
              
                
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

