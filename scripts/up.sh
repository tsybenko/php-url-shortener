if ! command -v docker-compose &> /dev/null
then
    echo "docker-compose could not be found"
    exit
fi

docker-compose up -d

docker-compose exec backend bash -c "composer install"