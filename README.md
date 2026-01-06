docker images

docker build --no-cache -t express-ts-app .

docker run -p 3000:3000 --name express-test express-ts-app
docker run -d -p 3000:3000 --name express-test express-ts-app

docker ps

http://localhost:3000