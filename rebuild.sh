docker-compose down
docker rmi my-keycloak:26.1.3-custom
docker build -t my-keycloak:26.1.3-custom .
docker images |grep my-keycloak

