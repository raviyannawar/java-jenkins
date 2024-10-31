pipeline {
    agent any
    tools{
        //This points to the global tool configuration name for maven installation available on Jenkins
        maven 'maven-3.9.9'
        git 'git'
    }
    environment{
        def var1 = "first"
    }
    stages {
        stage("init") {
            steps {
                withCredentials([string(credentialsId: 'gitlab-secret', variable: 'GITLAB_TOKEN')]) 
                {
                    script{
                      //Available as env variable
                      //sh "echo $USERNAME"
                      //Available as groovy variable
                      //echo USERNAME 
                      // String 
                      //echo "Test $USERNAME"
                      //def URL = "https://$TOKEN@gitlab-2-vm.asia-south1-a.c.marketdata-web-project.internal/java-group/firstjava.git"
                      //echo URL
                      //sh "git clone ${URL}"

                      sh "git clone -c http.sslVerify=false https://${GITLAB_TOKEN}@gitlab-2-vm.asia-south1-a.c.marketdata-web-project.internal/java-group/firstjava.git"

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

