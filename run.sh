docker-compose build
python3 -m pytest
docker-compose up -d
docker-compose logs frontend
docker-compose logs backend
docker-compose logs database
