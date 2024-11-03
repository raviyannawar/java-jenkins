pwd;
export maven.wagon.http.ssl.insecure=true;
export maven.wagon.http.ssl.allowall=true;
cd firstjava;
mvn clean install;
mvn -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true deploy;

