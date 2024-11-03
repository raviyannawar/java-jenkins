pwd;
export maven.wagon.http.ssl.insecure=true;
export maven.wagon.http.ssl.allowall=true;
cd firstjava;
mvn clean install;
mvn deploy;

