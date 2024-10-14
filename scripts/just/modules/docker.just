#Just/ASD

sqllite-up:
    docker compose -f docker/docker-compose.yml up -d

sqllite-down:
    docker compose -f docker/docker-compose.yml down
