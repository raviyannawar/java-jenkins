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
                withCredentials([gitUsernamePassword(credentialsId: 'jenkins-user', gitToolName: 'git-tool')]) {
                      sh "rm -rf firstjava"
                      sh "git clone -c http.sslVerify=false https://gitlab-2-vm.asia-south1-a.c.grounded-style-440211-p1.internal/java-group/firstjava.git"
                }
              }
        }
        stage("build") {
            steps {
                 echo "Build"
                 sh "chmod +x ./scripts/build.sh"
                 sh "./scripts/build.sh"
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

