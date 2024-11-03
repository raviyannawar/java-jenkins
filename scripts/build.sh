pwd;
export MAVEN_OPTS="-Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true Dmaven.wagon.http.ssl.ignore.validity.dates=true";
cd firstjava;
mvn clean install;
mvn deploy;

