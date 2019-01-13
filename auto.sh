docker build --no-cache -t vigcoin/core core
docker push vigcoin/core
docker build --no-cache -t vigcoin/coind coind
docker push vigcoin/coind
docker build --no-cache -t vigcoin/pool pool
docker push vigcoin/pool
