pwd;
cd firstjava;
mvn clean install;
mvn -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true deploy;

