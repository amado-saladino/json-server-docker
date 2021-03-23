docker build -t server .
docker run -d -p 80:80 -v $PWD:/data server users.json