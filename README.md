# Usage

## Build
```
# build one image first, so other images can reuse it's image layers
docker-compose build alice

docker-compose build
```

## Run
```
echo GITHUB_TOKEN='...' > .env
docker-compose up -d
```
