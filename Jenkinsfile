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
                    script{
                      def URL = "https://${USERNAME}:${PASSWORD}@gitlab-1-vm/java/helloworld.git"
                          
                      sh "git clone ${URL}"
                     
                      //Available as env variable
                      sh "echo $USERNAME"
                      //Available as groovy variable
                      echo USERNAME 
                      // String 
                      echo "Test $USERNAME"
                    }      
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

