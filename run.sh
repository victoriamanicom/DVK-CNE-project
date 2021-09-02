cd backend
export DATABASE_URI=${DATABASE_URI}
export SECRET_KEY=${SECRET_KEY}
cd ..
echo ${DATABASE_URI}
docker-compose build
docker images
docker-compose up -d
docker-compose logs frontend
docker-compose logs backend
docker-compose logs database
