docker-compose build
cd frontend
python3 -m pytest --cov application
cd ..
cd backend
python3 -m pytest --cov application
cd ..
docker-compose up -d
docker-compose logs frontend
docker-compose logs backend
