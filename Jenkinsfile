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
                      usernamePassword(credentialsId:'gitlab_jenkinsuser', usernameVariable: 'USERNAME',  passwordVariable : 'PASSWORD')
                  ])
                {
                      echo PASSWORD
                      //Available as env variable
                      sh 'echo $USERNAME'
                      //Available as groovy variable
                      echo USERNAME 
                      // String 
                      echo "Test $USERNAME"
  
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
               echo "Testing"
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

