pwd;
cd firstjava;
mvn clean install;
export MAVEN_OPTS="-Dmaven.wagon.http.ssl.allowall=true -Dmaven.wagon.http.ssl.insecure=true"
mvn  -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true deploy;

