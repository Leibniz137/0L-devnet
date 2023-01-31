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

## Exec

You can access the root shell of the testnet nodes:

```
# any of these will work:
docker exec -it 0l-devnet_alice_1 bash
docker exec -it 0l-devnet_bob_1 bash
docker exec -it 0l-devnet_carol_1 bash
```