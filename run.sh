cd database
mysql -h dvk-database.co7ebuoqxhxx.eu-west-1.rds.amazonaws.com -P 3306 -u admin -p${DATABASE_PASSWORD} < Create.sql
cd ..
cd backend
export DATABASE_URI=${DATABASE_URI}
export SECRET_KEY=${SECRET_KEY}
cd ..
docker-compose build
docker images
docker-compose up -d
docker-compose logs frontend
docker-compose logs backend
docker-compose logs database
