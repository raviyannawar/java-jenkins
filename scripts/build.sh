pwd;
cd firstjava;
mvn clean install;
export MAVEN_OPTS="-Dmaven.wagon.http.ssl.allowall=true -Dmaven.wagon.http.ssl.insecure=true"
mvn  deploy -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true -DrepositoryId=gitlab-maven -DaltDeploymentRepository=gitlab-maven::default::https://${GITLAB_USER}:${GITLAB_TOKEN}@gitlab.internal.local/java-group/java-repositories/packages/maven


