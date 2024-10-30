pipeline {
    agent any
    tools{
        //This points to the global tool configuration name for maven installation available on Jenkins
        maven 'maven-3.9.9'
        git 'git'
    }
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
                     sh 'git clone https://${USERNAME}:${PASSWORD}@gitlab-1-vm/java/helloworld.git'
                     
                      //Available as env variable
                      sh "echo $USERNAME"
                      //Available as groovy variable
                      echo USERNAME 
                      // String 
                      echo "Test $USERNAME"

                    sh "git clone https://gitlab-1-vm/java/helloworld.git"
  
              }
              
            }
        }
        stage("build") {
            steps {
                 sh 'ping -c 4 gitlab-1-vm'
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

